Index: chrome/browser/policy/browser_signin_policy_handler.cc
--- chrome/browser/policy/browser_signin_policy_handler.cc.orig
+++ chrome/browser/policy/browser_signin_policy_handler.cc
@@ -43,7 +43,7 @@ void BrowserSigninPolicyHandler::ApplyPolicySettings(c
   const base::Value* value = policies.GetValue(policy_name());
   switch (static_cast<BrowserSigninMode>(value->GetInt())) {
     case BrowserSigninMode::kForced:
-#if !defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if !defined(OS_LINUX) && !defined(OS_CHROMEOS) && !defined(OS_BSD)
       prefs->SetValue(prefs::kForceBrowserSignin, base::Value(true));
 #endif
       FALLTHROUGH;
