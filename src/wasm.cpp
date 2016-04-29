/*
 * Copyright 2016 WebAssembly Community Group participants
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "wasm.h"
#include "wasm-traversal.h"
#include "ast_utils.h"

namespace wasm {

struct BlockTypeSeeker : public PostWalker<BlockTypeSeeker, Visitor<BlockTypeSeeker>> {
  Name target; // look for this one
  WasmType type = unreachable;

  BlockTypeSeeker(Name target) : target(target) {}

  void noteValue(Expression* value) {
    if (!value) {
      type = none; // like a nop
    } else {
      // once none, stop. it then indicates a poison value, that must not be consumed
      // and ignore unreachable
      if (type != none) {
        if (value->type == none) {
          type = none;
        } else if (value->type != unreachable) {
          type = value->type;
        }
      }
    }
  }

  void visitBreak(Break *curr) {
    if (curr->name == target) noteValue(curr->value);
  }

  void visitSwitch(Switch *curr) {
    for (auto name : curr->targets) {
      if (name == target) noteValue(curr->value);
    }
  }

  void visitBlock(Block *curr) {
    if (curr->list.size() > 0) noteValue(curr->list.back());
  }
};

void Block::finalize() {
  if (list.size() > 0) {
    auto last = list.back()->type;
    if (last != unreachable) {
      // well that was easy
      type = last;
      return;
    }
  }
  if (!name.is()) {
    // that was rather silly
    type = unreachable;
    return;
  }
  // oh no this is hard
  BlockTypeSeeker seeker(name);
  Expression* temp = this;
  seeker.walk(temp);
  type = seeker.type;
}

} // namespace wasm

