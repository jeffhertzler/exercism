;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:
(defun square-of-sum (num)
  (let ((val 0))
    (dotimes (i (+ num 1))
      (setq val (+ val i)))
    (expt val 2)))

(defun sum-of-squares (num)
  (let ((val 0))
    (dotimes (i (+ num 1))
      (setq val (+ val (expt i 2))))
    val))

(defun difference (num)
  (- (square-of-sum num) (sum-of-squares num)))

(difference 5)

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
