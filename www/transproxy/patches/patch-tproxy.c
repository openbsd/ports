--- tproxy.c.orig	Sun Feb  4 14:13:48 2001
+++ tproxy.c	Mon Feb 21 09:34:18 2011
@@ -49,6 +49,15 @@
 # include <netinet/ip_nat.h>
 #endif
 
+#ifdef OPENBSD_PF
+# include <sys/ioctl.h>
+# include <netinet/in_systm.h>
+# include <netinet/ip.h>
+# include <netinet/tcp.h>
+# include <net/if.h>
+# include <net/pfvar.h>
+#endif /* OPENBSD_PF */
+
 #ifdef IPTABLES
 # include <linux/netfilter_ipv4.h>
 #endif
@@ -188,6 +197,13 @@ static FILE				*log_file = NULL;
 static int				natdev = -1;
 #endif
 
+#ifdef OPENBSD_PF
+/*
+ * The /dev/pf device node.
+ */
+static int				pfdev = -1;
+#endif /* OPENBSD_PF */
+
 #ifdef TCP_WRAPPERS
 /*
  * The syslog levels for tcp_wrapper checking.
@@ -370,6 +386,17 @@ int main(int argc, char **argv)
 	}
 #endif
 
+#ifdef OPENBSD_PF
+	/*
+	 * Open /dev/pf before giving up our uid/gif.
+	 */
+	if ((pfdev = open("/dev/pf", O_RDWR)) < 0)
+	{
+		perror("open(\"/dev/pf\")");
+		exit(1);
+	}
+#endif /* OPENBSD_PF */
+
 #ifdef LOG_TO_FILE
 	/*
 	 * Open the log file for the first time.
@@ -1002,6 +1029,9 @@ static void trans_proxy(int sock, struct sockaddr_in *
 #ifdef IPFILTER
 	natlookup_t			natlook;
 #endif
+#ifdef OPENBSD_PF
+	struct pfioc_natlook natlook;
+#endif /* OPENBSD_PF */
 
 	/*
 	 * Initialise the connection structure.
@@ -1079,6 +1109,34 @@ static void trans_proxy(int sock, struct sockaddr_in *
 	conn.dest_addr.sin_port = natlook.nl_realport;
 #endif
 
+#ifdef OPENBSD_PF
+	/*
+	 * Build up the PF natlookup structure.
+	 */
+	memset((void *)&natlook, 0, sizeof(natlook));
+	natlook.af = AF_INET;
+	natlook.saddr.addr32[0] = conn.client_addr.sin_addr.s_addr;
+	natlook.daddr.addr32[0] = conn.dest_addr.sin_addr.s_addr;
+	natlook.proto = IPPROTO_TCP;
+	natlook.sport = conn.client_addr.sin_port;
+	natlook.dport = conn.dest_addr.sin_port;
+	natlook.direction = PF_OUT;
+
+	/*
+	 * Use the PF device to lookup the mapping pair.
+	 */
+	if (ioctl(pfdev, DIOCNATLOOK, &natlook) == -1)
+	{
+# if defined(LOG_TO_SYSLOG) || defined(LOG_FAULTS_TO_SYSLOG)
+		syslog(LOG_ERR, "ioctl(DIOCNATLOOK): %m");
+# endif
+		return;
+	}
+
+	conn.dest_addr.sin_addr.s_addr = natlook.rdaddr.addr32[0];
+	conn.dest_addr.sin_port = natlook.rdport;
+#endif /* OPENBSD_PF */
+
 #endif/*!IPTABLES*/
 
 	/*
@@ -2034,7 +2092,7 @@ static void write_pid(char *prog)
 static void alarm_signal(int sig)
 {
 #if defined(LOG_TO_SYSLOG) || defined(LOG_FAULTS_TO_SYSLOG)
-	syslog(LOG_NOTICE, "Alarm signal caught - connection timeout");
+	syslog(LOG_DEBUG, "Alarm signal caught - connection timeout");
 #endif
 	exit(1);
 }
