;;; zenirc-chanbuf.el --- zenirc one channel per buffer support

;; Copyright (c) 2002, 2003 Michele Bini

;; Author: Michele Bini <mibin@libero.it>
;; Created: Dec 2000
;; Version: 0.3
;; Keywords: comm

;; This is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA

;;; Commentary:
;;

;;; History:
;; 0.3: Hold nicknames in hash tables; this should improve performance
;; on very crowded channels, various bugfixes (topic lines handling
;; and more).

;;; Code:

(require 'zenirc)

(defvar zenirc-chanbuf-mode-hook nil)
(defvar zenirc-chanbuf-mode-map '()
  "Keymap for `zenirc-chanbuf-mode'.")

(unless zenirc-chanbuf-mode-map
  (setq zenirc-chanbuf-mode-map (make-sparse-keymap))
  (define-key zenirc-chanbuf-mode-map "\n" 'zenirc-chanbuf-send-line)
  (define-key zenirc-chanbuf-mode-map "\C-m" 'zenirc-chanbuf-send-line)
  (define-key zenirc-chanbuf-mode-map "\r" 'zenirc-chanbuf-send-line))

(defvar zenirc-chanbuf-server-buffer '())
(make-variable-buffer-local 'zenirc-chanbuf-server-buffer)
(defvar zenirc-chanbuf-victim '())
(make-variable-buffer-local 'zenirc-chanbuf-victim)
(defvar zenirc-chanbuf-nicks nil
  "Nicknames in the current channel.")
(defvar zenirc-chanbuf-topic nil
  "Current channel topic line.")
(make-variable-buffer-local 'zenirc-chanbuf-nicks)
(defun zenirc-chanbuf-has-nick-p (nick)
  (and zenirc-chanbuf-nicks
       (gethash (zenirc-downcase-name nick) zenirc-chanbuf-nicks)))
(defun zenirc-chanbuf-delete-nick (nick)
  (when zenirc-chanbuf-nicks
    (setq nick (zenirc-downcase-name nick))
    (puthash nick nil zenirc-chanbuf-nicks)))
(defun zenirc-chanbuf-add-nick (nick)
  (unless zenirc-chanbuf-nicks
    (setq zenirc-chanbuf-nicks
	  (make-hash-table :test 'equal :size 3)))
  (setq nick (zenirc-downcase-name nick))
  (or (zenirc-chanbuf-has-nick-p nick)
      (puthash nick t zenirc-chanbuf-nicks)))

(defcustom zenirc-chanbuf-use-header-line t
  "Whether to use the header line to show the channel topic."
  :type 'boolean :group 'zenirc-chanbuf)

(defun zenirc-chanbuf-update-header-line ()
  (when (boundp 'header-line-format)
    (if (and zenirc-chanbuf-use-header-line zenirc-chanbuf-topic)
	(progn
	  (make-local-variable 'header-line-format)
	  (setq header-line-format 'zenirc-chanbuf-topic))
      (kill-local-variable 'header-line-format))))

(defun zenirc-chanbuf-mode ()
  "Additional time wasting mode ... IRC-channel oriented."
  (interactive)
  (kill-all-local-variables)
  ;;(setq mode-line-process '("%s"))
  (setq mode-name "ZenIRC-chn")
  (setq major-mode 'zenirc-chanbuf-mode)
  (use-local-map zenirc-chanbuf-mode-map)
  (make-local-variable 'zenirc-chanbuf-topic)
  (setq zenirc-chanbuf-nicks nil)
  (run-hooks 'zenirc-chanbuf-mode-hook)
  (zenirc-chanbuf-update-header-line))
  

(defun zenirc-chanbuf-send-line ()
  "Send current line to the IRC server using the appropriate buffer."
  (interactive)
  (when (zenirc-in-input-p)
    (end-of-line)
    (let ((victim zenirc-chanbuf-victim)
	  (what (buffer-substring zenirc-process-mark (point))))
      (with-current-buffer zenirc-chanbuf-server-buffer
	(goto-char (point-max))
	(when (zenirc-in-input-p)
	  (kill-region (marker-position zenirc-process-mark) (point-max))
	  (unless (equal zenirc-current-victim victim)
	    (setq zenirc-current-victim nil)
	    (insert "/query " victim)
	    (setq zenirc-current-victim victim)
	    (zenirc-send-line))
	  (insert what)
	  (zenirc-send-line))))
    (insert "\n(sent)\n")
    (set-marker zenirc-process-mark (point))))

(defun zenirc-chanbuf-message (string &rest args)
  (when (symbolp string)
    (setq string (zenirc-lang-retrieve-catalog-entry string)))
  (when args
    (if string
	(setq string (apply 'format string args))
      (setq string (format "[raw] %s" args))))
  (setq string (concat string "\n"))
  (save-excursion
    (goto-char zenirc-process-mark)
    (insert-before-markers string)
    (set-marker zenirc-process-mark (point))))


(defun zenirc-chanbuf-buffer-name (server nick victim)
  (setq victim (and victim
		    (not (equal victim ""))
		    (zenirc-downcase-name victim)))
  (concat
   (zenirc-downcase-name nick)
   " " (or victim "") (if victim " " "") "@" server))

;;;; ... and the related zenirc minor mode

(defvar zenirc-chanbuf-minor-mode nil)
(make-variable-buffer-local 'zenirc-chanbuf-minor-mode)
(defvar zenirc-chanbuf-minor-mode-hook nil)
;; (defvar zenirc-chanbuf-victims '()
;;   "list of current-victims handled in separate buffers")
;; (make-variable-buffer-local 'zenirc-chanbuf-victims)

(defun zenirc-chanbuf-minor-buffer-name (victim)
  (zenirc-chanbuf-buffer-name zenirc-server zenirc-nick victim))

(defun zenirc-chanbuf-map-children (func)
  (let ((servbuf (current-buffer)))
    (mapcar
     (lambda (buf)
       (when
	   (and (buffer-live-p buf)
		(not (eq buf servbuf))
		(with-current-buffer buf
		  (and
		   (equal servbuf  zenirc-chanbuf-server-buffer)
		   (funcall func buf))))))
     (buffer-list))))
(defun zenirc-chanbuf-kill-children ()
  (interactive)
  (zenirc-chanbuf-map-children #'kill-buffer))
(defun zenirc-chanbuf-with-nick (nick func &rest args)
  (let ((servbuf (current-buffer)))
    (mapcar
     (lambda (buf)
       (with-current-buffer buf
	 (when (and (equal servbuf zenirc-chanbuf-server-buffer)
		    (zenirc-chanbuf-has-nick-p nick))
	   (apply func args))))
     (buffer-list))))

(defun zenirc-chanbuf-nick-message (nick string &rest args)
  (when (symbolp string)
    (setq string (zenirc-lang-retrieve-catalog-entry string)))
  (when args
    (if string
	(setq string (apply 'format string args))
      (setq string (format "[raw] %s" args))))
  (setq string (concat string "\n"))
  (zenirc-chanbuf-with-nick
   nick
   (lambda ()
     (save-excursion
       (goto-char zenirc-process-mark)
       (insert-before-markers string)
       (set-marker zenirc-process-mark (point))))))

(defun zenirc-chanbuf (victim)
  "*Create a new buffer for chatting with the specified VICTIM.
Return that buffer."
  (interactive "sVictim: ")
  (let ((server-buffer (current-buffer))
	(new-buffer
	 (get-buffer-create
	  (zenirc-chanbuf-minor-buffer-name
	   victim))))
    (with-current-buffer new-buffer
      (unless (eq major-mode 'zenirc-chanbuf-mode)
	(zenirc-chanbuf-mode)
	(setq zenirc-chanbuf-victim victim)
	(setq zenirc-chanbuf-server-buffer server-buffer)
	(setq zenirc-process-mark (set-marker (make-marker) (point-max)))))
    (when (interactive-p)
      (switch-to-buffer new-buffer))
    new-buffer))
(defun zenirc-chanbuf-JOIN (proc parsedmsg)
  (let ((channel (aref parsedmsg 2))
	(who (aref parsedmsg 1))
	(-nick zenirc-nick)
	(mode nil))
    (with-current-buffer (zenirc-chanbuf channel)
      (setq who (zenirc-extract-nick who))
      (zenirc-chanbuf-add-nick who)
      (if (zenirc-names-equal-p who -nick)
	  (zenirc-chanbuf-message 'join_you channel)
	(when (string-match "" channel)
	  (setq channel (substring channel 0 (- (match-end 0) 1)))
	  (setq mode (substring channel (match-end 0) (length channel))))
	(if mode
	    (zenirc-chanbuf-message 'join_mode who channel mode)
	  (zenirc-chanbuf-message 'join who channel))))))

;; /names reply
(defun zenirc-chanbuf-353 (proc parsedmsg)
  (let ((channel (aref parsedmsg 4))
	(nicks (aref parsedmsg 5)))
    (with-current-buffer (zenirc-chanbuf channel)
      (zenirc-chanbuf-message 's353 channel nicks)
      (save-match-data
	(let ((start 0))
	  (while (string-match "\\([^ \t@\+]+\\)" nicks start)
	    (zenirc-chanbuf-add-nick (match-string 1 nicks))
	    (setq start (match-end 1))))))))

;; /whois reply -- userinfo
(defun zenirc-chanbuf-311 (proc parsedmsg)
  (let ((who (aref parsedmsg 3)))
    (zenirc-chanbuf-nick-message
     who 's311 who (aref parsedmsg 4)
     (aref parsedmsg 5) (aref parsedmsg 7))))
;; /whois reply -- server
(defun zenirc-chanbuf-312 (proc parsedmsg)
  (let ((who (aref parsedmsg 3)))
    (zenirc-chanbuf-nick-message
     who 's312 who (aref parsedmsg 4)
     (aref parsedmsg 5))))
;; /whois reply -- is an irc oper
(defun zenirc-chanbuf-313 (proc parsedmsg)
  (let ((who (aref parsedmsg 3)))
    (zenirc-chanbuf-nick-message
     who 's313 who)))
;; /whois reply -- whowas
(defun zenirc-chanbuf-314 (proc parsedmsg)
  (let ((who (aref parsedmsg 3)))
    (zenirc-chanbuf-nick-message
     who 's314 who (aref parsedmsg 4)
     (aref parsedmsg 5) (aref parsedmsg 7))))
;; /whois reply -- idle
(defun zenirc-chanbuf-317 (proc parsedmsg)
  (let* ((who (aref parsedmsg 3))
	 (s (string-to-int (aref parsedmsg 4)))
	 (h (/ s 3600))
	 (s (- s (* h 3600)))
	 (m (/ s 60))
	 (s (- s (* m 60))))
    (zenirc-chanbuf-nick-message
     who 's317 who (format "%d:%02d:%02d" h m s))))
;; /whois reply -- channels
(defun zenirc-chanbuf-319 (proc parsedmsg)
  (let ((who (aref parsedmsg 3)))
    (zenirc-chanbuf-nick-message
     who 's319 who (aref parsedmsg 4))))

;; 331 - RPL_NOTOPIC "<channel> :No topic is set"
(defun zenirc-chanbuf-331 (proc parsedmsg)
  (let ((channel (aref parsedmsg 3)))
    (with-current-buffer (zenirc-chanbuf channel)
      (zenirc-chanbuf-message 's331 channel)
      (setq zenirc-chanbuf-topic nil)
      (zenirc-chanbuf-update-header-line))))

;; 332 - channel topic on join, etc.
(defun zenirc-chanbuf-332 (proc parsedmsg)
  (let ((channel (aref parsedmsg 3))
	(topic (aref parsedmsg 4)))
    (with-current-buffer (zenirc-chanbuf channel)
      (zenirc-chanbuf-message 's332 channel topic)
      (setq zenirc-chanbuf-topic topic)
      (zenirc-chanbuf-update-header-line))))

;; 333 - user who set topic and when it was set
;;       :server 333 to channel who-set-topic time-when-set
(defun zenirc-chanbuf-333 (proc parsedmsg)
  (let ((channel (aref parsedmsg 3)))
    (with-current-buffer (zenirc-chanbuf channel)
      (zenirc-chanbuf-message
       's333
       channel (aref parsedmsg 4)
       (current-time-string
	(zenirc-epoch-seconds-to-time
	 (aref parsedmsg 5)))))))

(defun zenirc-chanbuf-KICK (proc parsedmsg)
  (let ((-nick zenirc-nick)
	(kicker (zenirc-extract-nick (aref parsedmsg 1)))
	(channel (aref parsedmsg 2))
	(kicked (zenirc-extract-nick (aref parsedmsg 3)))
	(reason (aref parsedmsg 4)))
    (with-current-buffer (zenirc-chanbuf channel)
      (if (zenirc-names-equal-p kicked -nick)
	  (zenirc-chanbuf-message
	   'kick_you channel
	   (format "%s - %s" kicker reason))
	(zenirc-chanbuf-message
	 'kick kicked channel
	 (format "%s - %s" kicker reason))))))
(defun zenirc-chanbuf-MODE (proc parsedmsg)
  (let ((who (zenirc-extract-nick (aref parsedmsg 1)))
	(channel (aref parsedmsg 2)))
    (with-current-buffer (zenirc-chanbuf channel)
      (zenirc-chanbuf-message
       'mode who channel
       (format "%s %s %s %s %s %s"
	       (or (aref parsedmsg 3) "")
	       (or (aref parsedmsg 4) "")
	       (or (aref parsedmsg 5) "")
	       (or (aref parsedmsg 6) "")
	       (or (aref parsedmsg 7) "")
	       (or (aref parsedmsg 8) ""))))))
(defun zenirc-chanbuf-PART (proc parsedmsg)
  (let ((channel (aref parsedmsg 2))
	(who (zenirc-extract-nick (aref parsedmsg 1)))
	(why (or (aref parsedmsg 3) ""))
	(-nick zenirc-nick))
    (with-current-buffer (zenirc-chanbuf channel)
      (zenirc-chanbuf-delete-nick who)
      (if (zenirc-names-equal-p who -nick)
	  (zenirc-chanbuf-message 'part_you channel why)
	(zenirc-chanbuf-message 'part who channel why)))))
(defun zenirc-chanbuf-QUIT (proc parsedmsg)
  (let ((who (zenirc-extract-nick (aref parsedmsg 1)))
	(reason (aref parsedmsg 2)))
    (zenirc-chanbuf-with-nick
     who
     (lambda ()
       (zenirc-chanbuf-message 'quit who reason)
       (zenirc-chanbuf-delete-nick who)))))
(defun zenirc-chanbuf-privmsg-or-notice (proc parsedmsg)
  (let ((which (aref parsedmsg 0))
	(from (or (zenirc-extract-nick (aref parsedmsg 1)) ""))
	(to (aref parsedmsg 2))
	(msg (aref parsedmsg 3))
	(-nick zenirc-nick))
    (let ((channel (zenirc-channel-p to)))
      (with-current-buffer (zenirc-chanbuf (if channel to from))
	(let ((time (when zenirc-timestamp
		      (concat zenirc-timestamp-prefix
			      (zenirc-timestamp-string)
			      zenirc-timestamp-suffix))))
	  (unless (string-match "\C-a" msg)
	    (if channel
		(zenirc-chanbuf-message
		 (if (equal which "PRIVMSG") 'privmsg_nochannel
		   'notice_nochannel)
		 (concat from time) msg)
	      (zenirc-chanbuf-add-nick from)
	      (zenirc-chanbuf-add-nick to)
	      (zenirc-chanbuf-message
	       (if (equal which "PRIVMSG") 'privmsg_you 'notice_you)
	       (concat from time) msg))))))))
(defun zenirc-chanbuf-TOPIC (proc parsedmsg)
  (let ((channel (aref parsedmsg 2))
	(topic (aref parsedmsg 3)))
    (with-current-buffer (zenirc-chanbuf channel)
      (zenirc-chanbuf-message
       'topic (zenirc-extract-nick (aref parsedmsg 1))
       channel topic)
      (setq zenirc-chanbuf-topic topic)
      (zenirc-chanbuf-update-header-line))))
(defun zenirc-chanbuf-NICK (proc parsedmsg)
  (let* ((from (zenirc-extract-nick (aref parsedmsg 1)))
	 (to (aref parsedmsg 2))
	 (servbuf (current-buffer))
	 (-nick zenirc-nick)
	 (-zenirc-server zenirc-server))
    (zenirc-chanbuf-nick-message
     from 'nick from to)
    (unless (zenirc-names-equal-p from to)
      (zenirc-chanbuf-map-children
       (lambda (buf)
	 (if (zenirc-names-equal-p from zenirc-chanbuf-victim)
	     (setq zenirc-chanbuf-victim to))
	 (when (zenirc-chanbuf-has-nick-p from)
	   (zenirc-chanbuf-delete-nick from)
	   (zenirc-chanbuf-add-nick to))
	 (rename-buffer
	  (zenirc-chanbuf-buffer-name
	   -zenirc-server -nick zenirc-chanbuf-victim)))))))
(defun zenirc-chanbuf-ctcp-query-ACTION (proc parsedctcp from to)
  (with-current-buffer
      (zenirc-chanbuf (if (zenirc-channel-p to) to (zenirc-extract-nick from)))
    (zenirc-chanbuf-message
     'ctcp_action_nochannel
     (zenirc-extract-nick from) (cdr parsedctcp))))
(defconst zenirc-chanbuf-mode-hooks
  '((zenirc-server-JOIN-hook . zenirc-chanbuf-JOIN)
    (zenirc-server-KICK-hook . zenirc-chanbuf-KICK)
    (zenirc-server-MODE-hook . zenirc-chanbuf-MODE)
    (zenirc-server-PART-hook . zenirc-chanbuf-PART)
    (zenirc-server-QUIT-hook . zenirc-chanbuf-QUIT)
    (zenirc-server-353-hook . zenirc-chanbuf-353)
    (zenirc-server-311-hook . zenirc-chanbuf-311)
    (zenirc-server-312-hook . zenirc-chanbuf-312)
    (zenirc-server-313-hook . zenirc-chanbuf-313)
    (zenirc-server-314-hook . zenirc-chanbuf-314)
    (zenirc-server-317-hook . zenirc-chanbuf-317)
    (zenirc-server-319-hook . zenirc-chanbuf-319)
    (zenirc-server-331-hook . zenirc-chanbuf-331) ; no topic message
    (zenirc-server-332-hook . zenirc-chanbuf-332) ; topic message
    (zenirc-server-333-hook . zenirc-chanbuf-333) ; topic set time
    (zenirc-server-PRIVMSG-hook .
     zenirc-chanbuf-privmsg-or-notice)
    (zenirc-server-NOTICE-hook
     . zenirc-chanbuf-privmsg-or-notice)
    (zenirc-server-TOPIC-hook . zenirc-chanbuf-TOPIC)
    (zenirc-server-NICK-hook . zenirc-chanbuf-NICK)
    (zenirc-ctcp-query-ACTION-hook .
     zenirc-chanbuf-ctcp-query-ACTION)))
(defun zenirc-chanbuf-minor-mode-enable ()
  (mapcar
   (lambda (a)
     (zenirc-add-hook (car a) (cdr a) t))
   zenirc-chanbuf-mode-hooks)
  (setq zenirc-chanbuf-minor-mode t)
  (run-hooks 'zenirc-chanbuf-minor-mode-hook)
  (add-hook 'kill-buffer-hook 'zenirc-chanbuf-kill-children))
(defun zenirc-chanbuf-minor-mode-disable ()
  (mapcar
   (lambda (a)
     (zenirc-remove-hook (car a) (cdr a)))
   zenirc-chanbuf-mode-hooks)
  (remove-hook 'kill-buffer-hook 'zenirc-chanbuf-kill-children)
  (setq zenirc-chanbuf-minor-mode nil))

(defun zenirc-chanbuf-minor-mode (&optional arg)
  "Toggle zenirc chanbuf minor mode.
This mode allows different victims to be handled in separate buffers.

With prefix ARG, turn the mode on iff ARG is positive."
  (interactive)
  (cond
   ((null arg)
    (if zenirc-chanbuf-minor-mode
	(zenirc-chanbuf-minor-mode-disable)
      (zenirc-chanbuf-minor-mode-enable)))
   ((> (prefix-numeric-value arg) 0)
    (zenirc-chanbuf-minor-mode-enable))
   (t (zenirc-chanbuf-minor-mode-disable))))

(provide 'zenirc-chanbuf)

;;; zenirc-chanbuf.el ends here
