# patch by obecian <obecian@openbsd.org>
# verified by antirez and dugsong -- will be in next release

--- getlhs.c.orig	Sat Aug 19 21:41:20 2000
+++ getlhs.c	Sat Aug 19 21:43:54 2000
@@ -16,137 +16,32 @@
 int get_linkhdr_size(char *ifname)
 {
 
-/*
- *	PPP
- */
-
-#ifdef OSTYPE_LINUX	/* Linux */
-	if ( strstr(ifname, "ppp") )
-	{
-		linkhdr_size = PPPHDR_SIZE_LINUX;
-		return 0;
-	}
-#endif
-
-#ifdef OSTYPE_FREEBSD	/* FreeBSD */
-	if ( strstr(ifname, "ppp") )
-	{
-		linkhdr_size = PPPHDR_SIZE_FREEBSD;
-		return 0;
-	}
-#endif
-
-#ifdef OSTYPE_OPENBSD /* OpenBSD */
-	if ( strstr(ifname, "ppp") )
-	{
-		linkhdr_size = PPPHDR_SIZE_OPENBSD;
-		return 0;
-	}
-#endif
-
-#ifdef OSTYPE_NETBSD /* NetBSD */
-	if ( strstr(ifname, "ppp") )
-	{
-		linkhdr_size = PPPHDR_SIZE_NETBSD;
-		return 0;
-	}
-#endif
-
-/* XXX: if you port hping2 to BSDI remember
- * that PPPHDR_SIZE_BSDOS must be 24 for some
- * BSDI versions (see libpcap for more information)
- */
-
-/*
- *	Ethernet
- */
-
-#ifdef OSTYPE_LINUX	/* Linux */
-	else if ( strstr(ifname, "eth") )
-	{
-		linkhdr_size = ETHHDR_SIZE;
-		return 0;
-	}
-#endif
-
-#ifdef OSTYPE_FREEBSD	/* FreeBSD */
-	else if ( strstr(ifname, "eth") /* ? */
-	     ||   strstr(ifname, "ed")
-	     ||   strstr(ifname, "ne")
-	     ||   strstr(ifname, "xl")	/* 3com */
-	     ||   strstr(ifname, "vx")	/* 3com (older model) */
-	     ||   strstr(ifname, "ep")  /* 3com 3c589 */
-	     ||   strstr(ifname, "fxp")	/* Intel EtherExpress Pro/100B */
-	     ||   strstr(ifname, "al")	/* ADMtek Inc. AL981 "Comet" chip. */
-	     ||   strstr(ifname, "de")	/* Digital Equipment DC21040 */
-	     ||   strstr(ifname, "mx")	/* Macronix 98713, 987615 ans 98725 */
-	     ||   strstr(ifname, "rl")	/* RealTek 8129/8139 */
-	     ||   strstr(ifname, "sf")	/* Adaptec Duralink PCI */
-	     ||   strstr(ifname, "sk")	/* SysKonnect SK-984x */
-	     ||   strstr(ifname, "tl")	/* Compaq Netelligent 10/10+TNETE100 */
-	     ||   strstr(ifname, "tx")	/* SMC 9432TX */
-	     ||   strstr(ifname, "wb"))	/* Winbond W89C840F chip */
-	{
-		linkhdr_size = ETHHDR_SIZE;
-		return 0;
-	}
-#endif
-
-#ifdef OSTYPE_OPENBSD /* OpenBSD FIXME: grepped from FreeBSD, it's OK? */
-	else if ( strstr(ifname, "eth") /* ? */
-	     ||   strstr(ifname, "ed")
-	     ||   strstr(ifname, "ne")
-	     ||   strstr(ifname, "xl")	/* 3com */
-	     ||   strstr(ifname, "vx")	/* 3com (older model) */
-	     ||   strstr(ifname, "ep")  /* 3com 3c589 */
-	     ||   strstr(ifname, "fxp")	/* Intel EtherExpress Pro/100B */
-	     ||   strstr(ifname, "al")	/* ADMtek Inc. AL981 "Comet" chip. */
-	     ||   strstr(ifname, "de")	/* Digital Equipment DC21040 */
-	     ||   strstr(ifname, "mx")	/* Macronix 98713, 987615 ans 98725 */
-	     ||   strstr(ifname, "rl")	/* RealTek 8129/8139 */
-	     ||   strstr(ifname, "sf")	/* Adaptec Duralink PCI */
-	     ||   strstr(ifname, "sk")	/* SysKonnect SK-984x */
-	     ||   strstr(ifname, "tl")	/* Compaq Netelligent 10/10+TNETE100 */
-	     ||   strstr(ifname, "tx")	/* SMC 9432TX */
-	     ||   strstr(ifname, "wb"))	/* Winbond W89C840F chip */
-	{
-		linkhdr_size = ETHHDR_SIZE;
-		return 0;
-	}
-#endif
-
-#ifdef OSTYPE_NETBSD /* NetBSD FIXME: grepped from FreeBSD, it's OK? */
-	else if ( strstr(ifname, "eth") /* ? */
-	     ||   strstr(ifname, "ed")
-	     ||   strstr(ifname, "ne")
-	     ||   strstr(ifname, "xl")	/* 3com */
-	     ||   strstr(ifname, "vx")	/* 3com (older model) */
-	     ||   strstr(ifname, "ep")  /* 3com 3c589 */
-	     ||   strstr(ifname, "fxp")	/* Intel EtherExpress Pro/100B */
-	     ||   strstr(ifname, "al")	/* ADMtek Inc. AL981 "Comet" chip. */
-	     ||   strstr(ifname, "de")	/* Digital Equipment DC21040 */
-	     ||   strstr(ifname, "mx")	/* Macronix 98713, 987615 ans 98725 */
-	     ||   strstr(ifname, "rl")	/* RealTek 8129/8139 */
-	     ||   strstr(ifname, "sf")	/* Adaptec Duralink PCI */
-	     ||   strstr(ifname, "sk")	/* SysKonnect SK-984x */
-	     ||   strstr(ifname, "tl")	/* Compaq Netelligent 10/10+TNETE100 */
-	     ||   strstr(ifname, "tx")	/* SMC 9432TX */
-	     ||   strstr(ifname, "wb"))	/* Winbond W89C840F chip */
-	{
-		linkhdr_size = ETHHDR_SIZE;
-		return 0;
-	}
-#endif
-
-/*
- *	Loopback
- */
-
-	else if ( strstr(ifname, "lo") )
-	{
-		linkhdr_size = LOHDR_SIZE;
-		return 0;
-	}
-	else
+/* XXX - use pcap to identify header offset - obecian@celerity.bartoli.org */
+pcap_t *tpd = NULL;
+char errbuf[256];
+int linktype;
+
+if ((tpd = pcap_open_live(ifname,0,0,0,errbuf)) == NULL)
+{
+	fprintf(stderr, "Error opening interface: %s\n", errbuf);
+	exit(1);
+}
+linktype=pcap_datalink(tpd);
+pcap_close(tpd);
+
+switch(linktype)
+{
+	case DLT_LOOP:
+	case DLT_EN10MB: linkhdr_size = 14; break; /* also 100 */
+	case DLT_NULL:
+	case DLT_PPP: /* XXX - fix for Linux, i only have bsd  - obecian */
+		linkhdr_size = 4;
+		break;
+	default:
+		fprintf(stderr, "Unsupported datalink type: %s\n",ifname);
 		return -1;
+		break;
+}
+
+return 0;
 }
