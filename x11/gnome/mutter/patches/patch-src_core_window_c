Fix focus issue: https://gitlab.gnome.org/GNOME/mutter/-/issues/2690

Index: src/core/window.c
--- src/core/window.c.orig
+++ src/core/window.c
@@ -2007,15 +2007,6 @@ window_state_on_map (MetaWindow *window,
       return;
     }
 
-  /* Do not focus window on map if input is already taken by the
-   * compositor.
-   */
-  if (!meta_display_windows_are_interactable (window->display))
-    {
-      *takes_focus = FALSE;
-      return;
-    }
-
   /* Terminal usage may be different; some users intend to launch
    * many apps in quick succession or to just view things in the new
    * window while still interacting with the terminal.  In that case,
