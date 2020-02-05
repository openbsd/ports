$OpenBSD: patch-desktop_source_app_app_cxx,v 1.17 2020/02/05 19:58:10 robert Exp $
Index: desktop/source/app/app.cxx
--- desktop/source/app/app.cxx.orig
+++ desktop/source/app/app.cxx
@@ -564,6 +564,7 @@ void Desktop::InitFinished()
 
 void Desktop::DeInit()
 {
+    const CommandLineArgs& rCmdLineArgs = GetCommandLineArgs();
     try {
         // instead of removing of the configManager just let it commit all the changes
         utl::ConfigManager::storeConfigItems();
@@ -580,7 +581,9 @@ void Desktop::DeInit()
         // clear lockfile
         m_xLockfile.reset();
 
-        RequestHandler::Disable();
+        if ( !rCmdLineArgs.GetUnknown().isEmpty()
+                  || rCmdLineArgs.IsHelp() || rCmdLineArgs.IsVersion() )
+            RequestHandler::Disable();
         if( pSignalHandler )
             osl_removeSignalHandler( pSignalHandler );
     } catch (const RuntimeException&) {
