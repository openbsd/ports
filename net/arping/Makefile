# $OpenBSD: Makefile,v 1.27 2009/06/03 19:13:20 benoit Exp $

COMMENT =	ARP level ping utility

DISTNAME =	arping-2.08
CATEGORIES =	net

HOMEPAGE =	http://www.habets.pp.se/synscan/programs.php?prog=ARPing

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c pcap

MASTER_SITES =	http://www.habets.pp.se/synscan/files/ \
		http://www.arcane-labs.net/download/OpenBSD/

LIB_DEPENDS =	lib/libnet-1.0/net.=0:libnet->=1.0,<1.1:net/libnet/1.0

ALL_TARGET =	openbsd

NO_REGRESS =	Yes

.include <bsd.port.mk>
