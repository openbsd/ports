# $OpenBSD: Makefile,v 1.5 2010/11/19 22:31:32 espie Exp $

COMMENT =	ARP scanning and fingerprinting tool
DISTNAME =	arp-scan-1.7
REVISION =	0
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
USE_GROFF =		Yes

.include <bsd.port.mk>
