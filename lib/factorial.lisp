; 階乗計算
(defun factorial (x) 
  (if (<= x 1) 
    x
    (+ x (conbination(- x 1)))
    )
  )


