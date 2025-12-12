;; Set default frame parameters for all frames
;; These settings create a clean, modern UI apperance

;; No menu bar, toolbar, scroll bar
(setq default-frame-alist '(
    (menu-bar-lines . 0)
    (tool-bar-lines . 0)
    (horizontal-scroll-bars . nil)
    (vertical-scroll-bars . nil)
    (title . "")
    (font . "0xProto Nerd Font-14")))

(setq
  auto-save-list-file-prefix nil ; Disable auto-save
  use-short-answers t ; y/n for yes/no
  )

(provide 'early-init)

;; early-init.el ends here
