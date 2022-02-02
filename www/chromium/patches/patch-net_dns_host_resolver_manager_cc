Index: net/dns/host_resolver_manager.cc
--- net/dns/host_resolver_manager.cc.orig
+++ net/dns/host_resolver_manager.cc
@@ -2932,7 +2932,7 @@ HostResolverManager::HostResolverManager(
   NetworkChangeNotifier::AddConnectionTypeObserver(this);
   if (system_dns_config_notifier_)
     system_dns_config_notifier_->AddObserver(this);
-#if defined(OS_POSIX) && !defined(OS_APPLE) && !defined(OS_OPENBSD) && \
+#if defined(OS_POSIX) && !defined(OS_APPLE) && !defined(OS_BSD) && \
     !defined(OS_ANDROID)
   EnsureDnsReloaderInit();
 #endif
