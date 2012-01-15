(autoload 'el-autoyas-expand-maybe "el-autoyas" "" t)

(defun el-autoyas-epackage-enable  ()
  "Enable el-autoyas.el"
  (when (boundp 'yas/fallback-behavior)
    (set (make-local-variable 'yas/fallback-behavior)
	 '(apply el-autoyas-expand-maybe))))

(add-hook 'yas/minor-mode-hook 'el-autoyas-epackage-enable)

(provide 'el-autoyas-elisp-epackage-install)
