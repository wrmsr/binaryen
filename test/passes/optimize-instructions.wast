(module
  (memory 0)
  (func $f (param $i1 i32) (param $i2 i64)
    (if
      (i32.eqz
        (get_local $i1)
      )
      (i32.const 10)
    )
    (if
      (i32.eqz
        (get_local $i1)
      )
      (i32.const 11)
      (i32.const 12)
    )
    (if
      (i64.eqz
        (get_local $i2)
      )
      (i32.const 11)
      (i32.const 12)
    )
    (i32.eqz (i32.gt_s (i32.const 1) (i32.const 2)))
    (i32.eqz (i32.ge_s (i32.const 1) (i32.const 2)))
    (i32.eqz (i32.lt_s (i32.const 1) (i32.const 2)))
    (i32.eqz (i32.le_s (i32.const 1) (i32.const 2)))
    (i32.eqz (i32.gt_u (i32.const 1) (i32.const 2)))
    (i32.eqz (i32.ge_u (i32.const 1) (i32.const 2)))
    (i32.eqz (i32.lt_u (i32.const 1) (i32.const 2)))
    (i32.eqz (i32.le_u (i32.const 1) (i32.const 2)))
  )
)

