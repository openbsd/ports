--- src/gated/if.c.orig	Fri Mar 17 00:54:51 2000
+++ src/gated/if.c	Sun Nov 17 13:35:50 2002
@@ -2863,9 +2863,10 @@ if_rtup(if_addr *ifap)
 	    case IFS_LOOPBACK:
 	        /* Add a host route to the loopback interface */
 
-	        BIT_SET(int_rtparms.rtp_state, RTS_NOADVISE);
 	        int_rtparms.rtp_dest = ifap->ifa_addr_local;
 	        int_rtparms.rtp_dest_mask = sockhostmask(ifap->ifa_addr_local);
+		if (sock2ip(ifap->ifa_addr_local) == htonl(INADDR_LOOPBACK))
+		    BIT_SET(int_rtparms.rtp_state, RTS_NOADVISE);
 
 	    	ifap->ifa_rt = rt_add(&int_rtparms);
 	    	break;
