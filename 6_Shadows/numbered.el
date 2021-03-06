;; Numbered function

;; Identifies if a S-expression contain numbers and arithmetic operation basics

(defun numbered? (aexp)
  (cond ((atom aexp) (numberp aexp))
	(t (and (numbered? (car aexp))
		(numbered? (car (cdr (cdr aexp))))))))

(numbered? '(7 + 14)) ;t
(numbered? '(a + 7))  ;nil
