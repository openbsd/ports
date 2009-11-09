# $OpenBSD: Makefile,v 1.1.1.1 2009/11/09 21:28:19 merdely Exp $

PKG_ARCH =		*

COMMENT =		Nagios plugin to check RAID status with bioctl

DISTNAME =		check_bioctl-1.9
CATEGORIES =		net

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

HOMEPAGE =		http://openbsd.somedomain.net/nagios/check_bioctl.html
MASTER_SITES =		http://www.nagiosexchange.org/attachment/download/Check-Plugins/Hardware/Devices/RAID-Controller/check_bioctl/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

NO_BUILD =		Yes
NO_REGRESS =		Yes
WRKDIST =		${WRKDIR}

RUN_DEPENDS =		::net/nagios/plugins,-main

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_bioctl ${WRKSRC}/README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_bioctl ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_bioctl
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_bioctl

.include <bsd.port.mk>
