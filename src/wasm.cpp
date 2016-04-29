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
  BreakSeeker breakSeeker(name);
  Expression* temp = this;
  breakSeeker.walk(temp);
  if (breakSeeker.found == 0) {
    type = unreachable;
  } else {
    type = breakSeeker.type;
  }
}

} // namespace wasm

