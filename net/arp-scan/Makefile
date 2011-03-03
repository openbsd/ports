# $OpenBSD: Makefile,v 1.6 2011/03/03 09:47:50 sthen Exp $

COMMENT =	ARP scanning and fingerprinting tool
DISTNAME =	arp-scan-1.8
CATEGORIES =	net

HOMEPAGE =	http://www.nta-monitor.com/tools/arp-scan/
MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	${HOMEPAGE}download/

# GPLv3+
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c pcap

CONFIGURE_STYLE =	gnu
USE_GROFF =		Yes

post-install:
	cd ${PREFIX}/share/arp-scan; mv mac-vendor.txt mac-vendor.txt.dist

.include <bsd.port.mk>
