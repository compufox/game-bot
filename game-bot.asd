;;;; game-bot.asd

(asdf:defsystem #:game-bot
  :description "mastodon bot that makes people lose the game"
  :author "ava fox"
  :license  "NPLv1+"
  :version "1"
  :serial t
  :depends-on (#:glacier)
  :components ((:file "game-bot"))
  :build-operation "program-op"
  :build-pathname "bin/game-bot"
  :entry-point "game-bot::main")

#+sb-core-compression
(defmethod asdf:perform ((o asdf:image-op) (c asdf:system))
  (uiop:dump-image (asdf:output-file o c) :executable t :compression t))
