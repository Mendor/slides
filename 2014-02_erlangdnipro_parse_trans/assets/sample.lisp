(defun count (a l &optional c)
  (if l
    (count a
      (cdr l)
      (+ (if c c 0)
        (if (equal a (car l)) 1 0)))
    c))
