# $OpenBSD: Makefile,v 1.1.1.1 2008/10/07 10:01:41 sthen Exp $

COMMENT =	ARP scanning and fingerprinting tool
DISTNAME =	arp-scan-1.7
CATEGORIES =	net

HOMEPAGE =	http://www.nta-monitor.com/tools/arp-scan/
MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	${HOMEPAGE}download/

# GPLv2+
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c pcap

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
