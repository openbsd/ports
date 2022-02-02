Index: third_party/blink/common/renderer_preferences/renderer_preferences_mojom_traits.cc
--- third_party/blink/common/renderer_preferences/renderer_preferences_mojom_traits.cc.orig
+++ third_party/blink/common/renderer_preferences/renderer_preferences_mojom_traits.cc
@@ -64,7 +64,7 @@ bool StructTraits<blink::mojom::RendererPreferencesDat
   if (!data.ReadAcceptLanguages(&out->accept_languages))
     return false;
 
-#if defined(OS_LINUX) || defined(OS_CHROMEOS)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)
   if (!data.ReadSystemFontFamilyName(&out->system_font_family_name))
     return false;
 #endif
