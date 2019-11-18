;Primrose

(bgcolor "black")
(define x 1)
(speed 10)

(define (create x)
    (if (= x 600) 
        nil 
        (begin
            (color (color-find x))
            (speed 10)

            ; Nest Pattern
            ; (circle (/ x 2) 180)
            ; (rt (/ 45.991 2))

            ; Primrose That Works But Is Too Big
            ; (circle (+ (/ x 3) 180)
            ; (rt 45.991)

            (circle (+ (/ x 2) 3) 180)
            (rt 45.991)

            (create (+ x 1)))))

; RGB Only Color Find
(define (color-find x)
	(cond 
		; red to yellow
		((< x 100) 
			(rgb 
				1 
				(+ 0 (/ x 100)) 
				0))
		; yellow to green
		((< x 200)
			(rgb 
				(- 1 (/ (- x 100) 100)) 
				1 
				0))
		; green to cyan
		((< x 300)
			(rgb 
				0 
				1 
				(+ 0 (/ (- x 200) 100))))
		; cyan to blue
		((< x 400)
			(rgb 
				0 
				(- 1 (/ (- x 300) 100)) 
				1))
		; blue to violet
		((< x 500)
			(rgb 
				(+ 0 (/ (- x 400) 100)) 
				0 
				1))
		; violet to indigo
		((< x 600)
			(rgb 
				1
				0 
				(- 1 (/ (- x 500) 100))))

		)

	)
(create 0)
 
(exitonclick)
