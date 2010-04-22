# $OpenBSD: Makefile,v 1.55 2010/04/22 05:17:51 jolan Exp $

CATEGORIES=		geo
COMMENT=		geographic location of OpenBSD developers

DISTNAME=		openbsd-developers-1.0
PKGNAME=		${DISTNAME}p51
DISTFILES=
HOMEPAGE=		http://www.openbsd.org/

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/markers
	${INSTALL_DATA} ${FILESDIR}/OpenBSD ${PREFIX}/share/markers

where-am-i:
	@echo "$$(sysctl -n hw.sensors.nmea0.angle0 | cut -d' ' -f1)\t\t$$(sysctl -n hw.sensors.nmea0.angle1 | cut -d' ' -f1)\t\t\"$$(whoami)\"\\t\t#$$(finger $$(whoami) | head -1 | cut -d\: -f3-)"

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
