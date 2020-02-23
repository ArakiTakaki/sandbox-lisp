
; 予測される最小値
(defparameter *small* 1)

; 予測される最大値
(defparameter *big* 100)

; 予測を吐き出す
(defun guess-my-number ()
  ; 1bit右シフトさせ *small* + *big* の平均を算出させている。
  (ash (+ *small* *big*) -1))

; 予測された値より小さい場合の処理
(defun smaller () 
  ; guess-my-number から予測された値から -1 した値をbigへセットする
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

; 予測された値より大きい場合の処理
(defun bigger () 
  ; guess-my-number から予測された値から +1 した値をsmallへセットする
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))

;; ローカル変数定義サンプル
(let ((a 5)
      (b 6))
  (+ a b))
; -> 11

(flet (( sample-function (n)
                         (+ n 10)))
  (sample-function 5))
; -> 15


