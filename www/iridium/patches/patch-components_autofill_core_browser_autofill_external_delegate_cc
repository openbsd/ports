Index: components/autofill/core/browser/autofill_external_delegate.cc
--- components/autofill/core/browser/autofill_external_delegate.cc.orig
+++ components/autofill/core/browser/autofill_external_delegate.cc
@@ -130,7 +130,7 @@ void AutofillExternalDelegate::OnSuggestionsReturned(
     // Append the "Hide Suggestions" menu item for only Autofill Address and
     // Autocomplete popups.
 #if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_APPLE) || \
-    defined(OS_CHROMEOS)
+    defined(OS_CHROMEOS) || defined(OS_BSD)
   if (base::FeatureList::IsEnabled(
           features::kAutofillEnableHideSuggestionsUI)) {
     // If the user has selected a suggestion, it indicates the suggestions are
