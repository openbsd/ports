64bit time_t

Index: clutter/clutter/clutter-frame-clock.c
--- clutter/clutter/clutter-frame-clock.c.orig
+++ clutter/clutter/clutter-frame-clock.c
@@ -865,7 +865,7 @@ clutter_frame_clock_get_max_render_time_debug_info (Cl
   GString *string;
 
   string = g_string_new (NULL);
-  g_string_append_printf (string, "Max render time: %ld µs",
+  g_string_append_printf (string, "Max render time: %lld µs",
                           clutter_frame_clock_compute_max_render_time_us (frame_clock));
 
   if (frame_clock->got_measurements_last_frame)
@@ -886,15 +886,15 @@ clutter_frame_clock_get_max_render_time_debug_info (Cl
     MAX (frame_clock->longterm.max_swap_to_flip_us,
          frame_clock->shortterm.max_swap_to_flip_us);
 
-  g_string_append_printf (string, "\nVblank duration: %ld µs +",
+  g_string_append_printf (string, "\nVblank duration: %lld µs +",
                           frame_clock->vblank_duration_us);
-  g_string_append_printf (string, "\nDispatch lateness: %ld µs +",
+  g_string_append_printf (string, "\nDispatch lateness: %lld µs +",
                           max_dispatch_lateness_us);
-  g_string_append_printf (string, "\nDispatch to swap: %ld µs +",
+  g_string_append_printf (string, "\nDispatch to swap: %lld µs +",
                           max_dispatch_to_swap_us);
-  g_string_append_printf (string, "\nmax(Swap to rendering done: %ld µs,",
+  g_string_append_printf (string, "\nmax(Swap to rendering done: %lld µs,",
                           max_swap_to_rendering_done_us);
-  g_string_append_printf (string, "\nSwap to flip: %ld µs) +",
+  g_string_append_printf (string, "\nSwap to flip: %lld µs) +",
                           max_swap_to_flip_us);
   g_string_append_printf (string, "\nConstant: %d µs",
                           clutter_max_render_time_constant_us);
