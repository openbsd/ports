--- src/gated/if.c.orig	Fri Mar 17 08:54:51 2000
+++ src/gated/if.c	Sun Jul 30 19:03:25 2000
@@ -2863,9 +2863,10 @@
 	    case IFS_LOOPBACK:
 	        /* Add a host route to the loopback interface */
 
-	        BIT_SET(int_rtparms.rtp_state, RTS_NOADVISE);
 	        int_rtparms.rtp_dest = ifap->ifa_addr_local;
 	        int_rtparms.rtp_dest_mask = sockhostmask(ifap->ifa_addr_local);
+		if (sock2ip(ifap->ifa_addr_local) == htonl(INADDR_LOOPBACK))
+		    BIT_SET(int_rtparms.rtp_state, RTS_NOADVISE);
 
 	    	ifap->ifa_rt = rt_add(&int_rtparms);
 	    	break;
