# $OpenBSD: Makefile,v 1.6 2014/06/30 11:45:57 florian Exp $

PKG_ARCH =		*

COMMENT =		Nagios plugin to check RAID status with bioctl

DISTNAME =		check_bioctl-1.20
CATEGORIES =		net

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

HOMEPAGE =		https://www.monitoringexchange.org/inventory/Check-Plugins/Hardware/Devices/RAID-Controller/check_bioctl
MASTER_SITES =		http://cvs.afresh1.com/nagios/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		net/nagios/plugins,-main

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_bioctl ${WRKSRC}/README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_bioctl ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_bioctl
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_bioctl

.include <bsd.port.mk>
