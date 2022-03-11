Index: ui/views/window/frame_background.cc
--- ui/views/window/frame_background.cc.orig
+++ ui/views/window/frame_background.cc
@@ -109,7 +109,7 @@ void FrameBackground::PaintMaximized(gfx::Canvas* canv
                                      int width) const {
 // Fill the top with the frame color first so we have a constant background
 // for areas not covered by the theme image.
-#if (defined(OS_LINUX) || defined(OS_CHROMEOS)) && \
+#if (defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)) && \
     BUILDFLAG(ENABLE_DESKTOP_AURA)
   ui::NativeTheme::ExtraParams params;
   params.frame_top_area.use_custom_frame = use_custom_frame_;
