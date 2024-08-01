(setq w (getreal "Specify your weight in kg"))
(setq h (getreal "Specify your height in cm"))

(defun calculate-bmi (weight height)
	"Function to calculate BMI"
	(/ weight (* height height))
)

(let (bmi (calculate-bmi weight height)))
(format t "Your BMI is: ~a" bmi)
 