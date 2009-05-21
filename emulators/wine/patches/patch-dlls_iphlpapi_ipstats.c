--- dlls/iphlpapi/ipstats.c.orig	Wed May 20 01:09:50 2009
+++ dlls/iphlpapi/ipstats.c	Wed May 20 01:46:04 2009
@@ -655,7 +655,7 @@ DWORD WINAPI GetIpStatistics(PMIB_IPSTATS stats)
         }
         if (kc) kstat_close( kc );
     }
-#elif defined(HAVE_SYS_SYSCTL_H) && defined(IPCTL_STATS)
+#elif (defined(HAVE_SYS_SYSCTL_H) && defined(IPCTL_STATS)) && !defined(__OpenBSD__)
     {
         int mib[] = {CTL_NET, PF_INET, IPPROTO_IP, IPCTL_STATS};
 #define MIB_LEN (sizeof(mib) / sizeof(mib[0]))
@@ -1690,7 +1690,7 @@ DWORD WINAPI AllocateAndGetTcpTableFromStack( PMIB_TCP
         }
         else ret = ERROR_NOT_SUPPORTED;
     }
-#elif defined(HAVE_SYS_SYSCTL_H) && defined(HAVE_STRUCT_XINPGEN)
+#elif (defined(HAVE_SYS_SYSCTL_H) && defined(HAVE_STRUCT_XINPGEN)) && !defined(__OpenBSD__)
     {
         size_t Len = 0;
         char *Buf = NULL;
