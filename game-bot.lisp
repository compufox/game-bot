;;;; game-bot.lisp

(defpackage #:game-bot
  (:use #:cl #:glacier))
(in-package #:game-bot)

(defun make-reply (notif)
  (when (mention-p notif)
    (reply (tooter:status notif)
	   "you just lost the Game"
	   :cw "cognitohazard"
	   :include-mentions t)))

(defun main ()
  (run-bot (make-instance 'mastodon-bot
			  :config-file "bot.config"
			  :on-notification #'make-reply)
    (after-every ((random 180) :minutes)
      (post "the Game"
	    :cw "cognitohazard"
	    :visibility :public))))
