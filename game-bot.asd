;;;; game-bot.asd

(asdf:defsystem #:game-bot
  :description "mastodon bot that makes people lose the game"
  :author "ava fox"
  :license  "NPLv1+"
  :version "1"
  :serial t
  :depends-on (#:glacier)
  :components ((:file "game-bot")))
