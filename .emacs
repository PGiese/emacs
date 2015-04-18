;; Away with the pesky startup message! Instead: Start the system in scratch
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
;; Setting of bell
(setq visible-bell t)

;; Shortcut to "yes or no"
(defalias 'yes-or-no-p 'y-or-n-p)

;;Applelize the keybloard
(cond
 ((string-equal system-type "darwin")   ; Mac OS X
  (progn
    (setq
     ns-command-modifier 'meta         ; Apple/Command key is Meta
         ns-alternate-modifier nil         ; Option is the Mac Option key
         ns-use-mac-modifier-symbols  nil  ; display standard Emacs (and not standard Mac) modifier symbols
         ))
  )
 )

;; Setting up Wolfram-mode
 (autoload 'wolfram-mode "wolfram-mode" nil t)
 (autoload 'run-wolfram "wolfram-mode" nil t)
 (setq wolfram-program "/scp:pi@192.168.178.26:/opt/Wolfram/WolframEngine/10.0/SystemFiles/Kernel/Binaries/Linux-ARM/WolframKernel")
 (add-to-list 'auto-mode-alist '("\\.m$" . wolfram-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(achievements-mode t)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(debug-on-error nil)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(emms-player-list
   (quote
    (emms-player-mpg321 emms-player-ogg123 emms-player-mplayer-playlist emms-player-mplayer emms-player-vlc emms-player-sbagen-playable-p)))
 '(frame-background-mode (quote dark))
 '(ledger-reports
   (quote
    (("bal-al2" "ledger -f %(ledger-file) bal assets and not Oli and not Hedda and not Gutschein and not Papa liabilities and not GDNÄ and not DPG")
     ("bal-eq" "ledger -f %(ledger-file) bal assets liabilities")
     ("bal-nw" "ledger -f %(ledger-file) bal income expenses")
     ("bal" "ledger -f %(ledger-file) bal")
     ("reg" "ledger -f %(ledger-file) reg")
     ("regs" "ledger -f %(ledger-file) -s reg")
     ("payee" "ledger -f %(ledger-file) bal expenses and %(payee)")
     ("account" "ledger -f %(ledger-file) reg %(account)")
     ("weekly" "ledger -f %(ledger-file) --budget --weekly register expenses:Lebensmittel")
     ("gnuplot" "/Users/phil/ledger/contrib/report -f %(ledger-file) -j reg Expenses")
     ("account-clear" "ledger -f %(ledger-file) --cleared reg %(account)"))))
 '(org-agenda-custom-commands
   (quote
    (("W" "Weekly Meeting"
      ((tags "TIMESTAMP_IA>=\"<-1w>\"/DONE"
	     ((org-agenda-sorting-strategy
	       (quote
		(tag-up)))))
       (tags "TIMESTAMP_IA>=\"<-1w>\"/ABANDONED"
	     ((org-agenda-sorting-strategy
	       (quote
		(tag-up)))))
       (tags "TIMESTAMP_IA>=\"<-1w>\"/FAILED"
	     ((org-agenda-sorting-strategy
	       (quote
		(tag-up)))))
       (todo "URGENT"
	     ((org-agenda-sorting-strategy
	       (quote
		(tag-up)))))
       (todo "IN PROGRESS"
	     ((org-agenda-sorting-strategy
	       (quote
		(tag-up)))))
       (todo "PENDING"
	     ((org-agenda-sorting-strategy
	       (quote
		(tag-up)))))
       nil
       ("test.pdf")))
     ("X" "Measurement files"
      ((tags "Messung")
       (tags "Messungen")
       (tags "Rohdaten")
       (tags "Kalibration"))))))
 '(org-agenda-files
   (quote
    ("~/development/emacs/org/habits.org" "~/Arbeitssicherheit und Messtechnik Giese/Projekte und Projektideen/ideenfundus.org" "~/Arbeitssicherheit und Messtechnik Giese/Projekte und Projektideen/tonometer.org" "~/Arbeitssicherheit und Messtechnik Giese/Projekte und Projektideen/Blog.org" "~/Arbeitssicherheit und Messtechnik Giese/Projekte und Projektideen/kan-banit.org" "~/development/emacs/org/outline_kanban.org" "~/Arbeitssicherheit und Messtechnik Giese/Tonometer/Messwerte/Messungen.org")))
 '(org-default-notes-file "notes.org")
 '(org-directory "~/development/emacs/org")
 '(org-export-taskjuggler-target-version 3.5)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-habit org-irc org-mhe org-rmail org-w3m)))
 '(org-stuck-projects
   (quote
    ("+LEVEL=2/-DONE"
     ("QUEUE" "ABANDONED" "FAILED" "PROJEKT" "IDEE" "TODO" "DONEHABIT")
     nil "")))
 '(org-todo-keyword-faces
   (quote
    (("QUEUE" . "deep sky blue")
     ("URGENT" . "indian red")
     ("IN PROGRESS" . "orange red")
     ("PENDING" . "sienna")
     ("DONE" . "green")
     ("ABANDONED" . "light sea green")
     ("FAILED" . "red")
     ("TODO" . "firebrick")
     ("DONEHABIT" . "forest green")
     ("IDEE" . "yellow")
     ("PROJEKT" . "dark orange")
     ("VERWORFEN" . "medium sea green"))))
 '(org-todo-keywords
   (quote
    ((sequence "QUEUE(q!)" "URGENT(u!)" "IN PROGRESS(i!)" "PENDING(p!)" "|" "DONE(d!)" "ABANDONED(a!)" "FAILED(f!)")
     (sequence "IDEE(i!)" "|" "PROJEKT(p!)" "VERWORFEN(v!)")
     (sequence "TODO(t)" "|" "DONEHABIT(h!)"))))
 '(rcirc-default-nick "philman")
 '(rcirc-default-user-name "philman")
 '(rcirc-startup-channels-alist
   (quote
    (("^irc.freenode.net$" "#rcirc" "#python" "#django" "ledger"))))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
     (setq org-capture-templates
      '(("t" "Todo" entry (file "~/development/emacs/org/outline_kanban.org")
             "* QUEUE %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/development/emacs/org/notes.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
        ("m" "measurements" entry (file+datetree "~/Arbeitssicherheit und Messtechnik Giese/Tonometer/Messwerte/Messungen.org")
             "* Messung eingelesen am %U\n#+TBLNAME:\n%?%i\n\n#+BEGIN_SRC R :var data=<INSERT NAME> :exports results :results output graphics :file <INSERT NAME>.png :width 400 :height 300\n\n#+END_SRC")))

 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;; Keybindings for macbook special chars
(setq default-input-method "MacOSX")
(setq mac-command-modifier 'meta
      mac-option-modifier nil
      mac-allow-anti-aliasing t
      mac-command-key-is-meta t)
;; Mobile Org
;; Location of org-files on local system
(setq org-directory "~/development/emacs/org")
;; name of files where notes are stored
(setq org-mobile-inbox-for-pull "~/development/emacs/org/notes.org")
;;Setting up mobile Org
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
;; Setting up Ledger
;;(require 'ledger)

(add-to-list 'load-path
  (expand-file-name "/Users/phil/ledger/lisp/"))
(add-to-list 'auto-mode-alist '("\_ledger.txt" . ledger-mode))
;; after setting up the load-path
(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)

;;(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
;;(add-to-list 'load-path
;;             (expand-file-name "/Users/phil/ledger/lisp/"))

;;(add-to-list 'auto-mode-alist '("\_ledger.txt" . ledger-mode))
;;Bash-Path-Variablen
(setenv "PATH" (concat "/opt/local/bin:"
		       "/opt/local/sbin:"
		       "/Users/phil/.rbenv/shims:"
		       "/Users/phil/.rbenv/bin:"
		       "/opt/local/bin:"
		       "/opt/local/sbin:"
		       "/Users/phil/Library/Enthought/Canopy_64bit/User/bin:"
		       "/Library/Frameworks/Python.framework/Versions/2.7/bin:"
		       "/usr/bin:"
		       "/Library/Frameworks/Python.framework/Versions/Current/bin:"
		       "/sw/bin:"
		       "/sw/sbin:"
		       "/usr/bin:"
		       "/bin:"
		       "/usr/sbin:"
		       "/sbin:"
		       "/usr/local/bin:"
		       "/opt/X11/bin:"
		       "/usr/X11R6/bin:"
		       "/Users/phil/.rvm/bin:"
		       "/usr/texbin:"
		       "/usr/games:"
		       (getenv "PATH")))
;; Load EMMS music player
(add-to-list 'load-path "~/emms/lisp/")
(require 'emms-setup)
(emms-standard)
(emms-default-players)
;; EMMS-player for sbagen-files
(define-emms-simple-player sbagen '(file) (emms-player-simple-regexp "sbg") "/Applications/sbagen-1.4.5/sbagen ")

;; load org-effectiveness - look at personal effectiveness
(load "~/worg/code/elisp/org-effectivness.el")
;; supported languages by babel
(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (java . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (sh . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))
;; setting up MELPA Package
;;(require 'package) ;; You might already have this line

  (require 'package)
  (package-initialize)
  (setq package-archives
  '(("ELPA" . "http://tromey.com/elpa/")
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")))

;;(add-to-list 'package-archives
;;             '("melpa" . "http://melpa.org/packages/") t)
;;(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
;;  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;;(package-initialize) ;; You might already have this line
;; setting up browser - w3m
;; (require 'w3m)
;; (if window-system
;;      (setq browse-url-browser-function 'w3m-browse-url)
;;     (setq browse-url-browser-function 'browse-url-chrome)
;;           ;(setq browse-url-browser-function 'w3m-browse-url
;;           ;;      browse-url-generic-program "conkeror")
;;           ;; browse-url-generic-program "chromium")
;;           ;; browse-url-generic-program "firefox"
;;   (setq browse-url-browser-function 'w3m-browse-url))
;; (setq browse-url-text-browser "w3m")
;; Swift mode
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require
    'swift-mode)
;; kanban-mode x
(require 'kanban)
;; org 2 blog
(setq load-path (cons "~/.emacs.d/org2blog/" load-path))
(require 'org2blog-autoloads)

(require 'auth-source) ;; or nothing if already in the load-path

(let (credentials)
  ;; only required if your auth file is not already in the list of auth-sources
  (add-to-list 'auth-sources "~/.netrc")
  (setq credentials (auth-source-user-and-password "myblog"))
  (setq org2blog/wp-blog-alist
        `(("my-blog"
           :url "http://quantified-musings.de/xmlrpc.php"
           :username ,(car credentials)
           :password ,(cadr credentials)))))

;; Implementierung von WIP-Limits
;; weitere Ziele:
;;Wiederholte Eingabe von Limit und Task, besser wäre es, wenn diese Aufgabe selbst schnell aufgerufen wird
;; Aufruf dieser Funktion aus Agenda-Views
;;
(defun WIPval (lim task)
  "Compares the WIP of a task with a set limit"
  (interactive "nLimit \nsTask: ")
(if (>= (string-to-number (car (last (split-string (org-effectiveness-count-keyword task))))) (+ lim 1))
(message "too large")))

;; limit and function for urgent tasks
(setq limU 20)
(setq taskU "URGENT")
(defun WIPU ()
"Checks wether the number of urgent tasks is lower than limU"
  (interactive ())
  (WIPval limU taskU))

;; limit and function for urgent tasks
(setq limP 10)
(setq taskP "IN PROGRESS")
(defun WIPP ()
"Checks wether the number of tasks in progress is lower than limP"
  (interactive ())
  (WIPval limP taskP))


;; ;; habitrpg setting
;; (add-hook 'org-after-todo-state-change-hook 'habitrpg-add 'append)
;; ;; For adding tasks from org mode
;; (global-set-key (kbd "C-c C-x h") 'habitrpg-add)
;; ;; Status buffer - use C-h m to see the keybindings
;; ;; C-c C-c - upvote task or buy reward
;; ;; C-c C-d - downvote task
;; ;; t - bring up manage menu, which adds or deletes tasks
;; (global-set-key (kbd "C-ü a") 'habitrpg-status)
;; ;; Continuously update a habit attache to a clocking task
;; (add-hook 'org-clock-in-hook 'habitrpg-clock-in)
;; (add-hook 'org-clock-out-hook 'habitrpg-clock-out)
;; ;; List of habits to check for when clocking a task
;; (add-to-list 'hrpg-tags-list "PROGRAMMING")
;; (add-to-list 'hrpg-tags-list "WORK")
;; (setq habitrpg-api-user "2506c20a-8c9f-4c7f-93a4-35ea9ee452c1")
;; (setq habitrpg-api-token "aad22910-3353-4361-b6e8-991e22debb4c")

;;setting up nethack
(setq load-path (cons "~/.emacs.d/nethack_el-0.9.5/" load-path))
(autoload 'nethack "nethack" "Play Nethack." t)
(setq nethack-program "/usr/games/nethack")

;;Save and load .emacs
(defun save-and-load ()
"Hitting a bazilion time c-x c-s m-x load-file is cumbersome. We have the cure."
  (interactive ())
  (save-buffer)
  (load-file user-init-file))
(global-set-key (kbd "C-c 1") 'save-and-load)

;; Set up ibuffer mode as an awesome replacement for the normal buffer mode
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers.")
;; Brainfuck mode
(require 'brainfuck-mode)

;; helm-mode
(require 'helm)
(require 'helm-R)

;;Org-mode coma letter support
  (load-file "~/.emacs.d/lisp/ox-coma-letter.el")
;;(eval-after-load 'ox '(require 'ox-koma-letter))

(eval-after-load 'ox-koma-letter
  '(progn
     (add-to-list 'org-latex-classes
                  '("my-letter"
                    "\\documentclass\{scrlttr2\}
     \\usepackage[english]{babel}
     \\setkomavar{frombank}{(1234)\\,567\\,890}
     \[DEFAULT-PACKAGES]
     \[PACKAGES]
     \[EXTRA]"))

     (setq org-koma-letter-default-class "my-letter")))

(eval-after-load 'ox-latex
  '(add-to-list 'org-latex-packages-alist '("AUTO" "babel" t) t))

;; AUCTex export to pdf
    (setq TeX-PDF-mode t)
;; Roguel-ike a RL written in emacs lisp
    (add-to-list 'load-path "/path/to/roguel-ike/")
    (require 'roguel-ike)

;;setting um CEDET for arduino
;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
;; CEDET component (including EIEIO) gets activated by another
;; package (Gnus, auth-source, ...).
  ;; (load-file "/Applications/Emacs.app/Contents/Resources/lisp/cedet/cedet.elc")
  ;; (global-ede-mode t)
  ;; (semantic-load-enable-code-helpers)
  ;; (global-srecode-minor-mode 1)
;; Configure arduino OS X dirs.
(setq ede-arduino-appdir "/Applications/Arduino.app/Contents/Resources/Java")

;;multiple cursors ftw
(require 'multiple-cursors)

;;Link to Mac Applications
(require 'org-mac-link)
(add-hook 'org-mode-hook (lambda ()
  (define-key org-mode-map (kbd "C-c g") 'org-mac-grab-link)))

;; Kanban-Analysis
(defun sacha/org-count-tasks-by-status ()
  (interactive)
  (let ((counts (make-hash-table :test 'equal))
        (today (format-time-string "%Y-%m-%d" (current-time)))
        values output)
    (org-map-entries
     (lambda ()
       (let* ((status (elt (org-heading-components) 2)))
         (when status
           (puthash status (1+ (or (gethash status counts) 0)) counts))))
     nil
     'agenda)
    (setq values (mapcar (lambda (x)
                           (or (gethash x counts) 0))
                         '("QUEUE" "URGENT" "IN PROGRESS" "PENDING" "DONE" "ABANDONED" "FAILED")))
    (setq output
          (concat "| " today " | "
                  (mapconcat 'number-to-string values " | ")
                  " | "
                  (number-to-string (apply '+ values))
                  " |"))
    (if (called-interactively-p 'any)
        (insert output)
      output)))
(sacha/org-count-tasks-by-status)

;; WIP-Limits realized
 (defun org-count-todos-in-state (state)
   (let ((count 0))
     (org-scan-tags (lambda ()
                      (when (string= (org-get-todo-state) state)
                        (setq count (1+ count))))
                    t t)
     count))

 (defvar org-wip-limit 5  "Work-in-progress limit")
 (defvar org-wip-state "URGENT")
 (defvar org-wip-limit2 5  "Work-in-progress limit")
 (defvar org-wip-state2 "IN PROGRESS")

;; (setq org-wip-limit2 5)

(defun org-block-wip-limit (change-plist)
   (catch 'dont-block
     (when (or (not (eq (plist-get change-plist :type) 'todo-state-change))
               (and (not (string= (plist-get change-plist :to) org-wip-state))
 	            (not (string= (plist-get change-plist :to) org-wip-state2))))
       (throw 'dont-block t))
     (when (and (string= (plist-get change-plist :to) org-wip-state)
	    (>= (org-count-todos-in-state org-wip-state) org-wip-limit ))
       (setq org-block-entry-blocking (format "WIP limit: %s" org-wip-state))
       (throw 'dont-block nil))
     (when (and (string= (plist-get change-plist :to) org-wip-state2)
	   (>= (org-count-todos-in-state org-wip-state2) org-wip-limit2 ))
       (setq org-block-entry-blocking (format "WIP limit: %s" org-wip-state2))
       (throw 'dont-block nil))
     t)) ; do not block

(remove-hook 'org-blocker-hook #'org-block-wip-limit)
(add-hook 'org-blocker-hook #'org-block-wip-limit)
