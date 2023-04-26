XXX mutter rendering is broken with amdgpu and DRI 3
XXX on anything other than glibc
https://gitlab.gnome.org/GNOME/mutter/-/issues/2103

Index: src/backends/meta-stage-impl.c
--- src/backends/meta-stage-impl.c.orig
+++ src/backends/meta-stage-impl.c
@@ -600,10 +600,14 @@ meta_stage_impl_redraw_view_primary (MetaStageImpl    
    * artefacts.
    */
   /* swap_region does not need damage history, set it up before that */
+#if 0
   if (use_clipped_redraw)
     swap_region = cairo_region_copy (fb_clip_region);
   else
     swap_region = cairo_region_create ();
+#else
+    swap_region = cairo_region_copy (fb_clip_region);
+#endif
 
   swap_with_damage = FALSE;
   if (has_buffer_age)
