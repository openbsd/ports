# $OpenBSD: Makefile,v 1.2 2012/04/06 15:35:08 merdely Exp $

PKG_ARCH =		*

COMMENT =		Nagios plugin to the status of ESX/i hardware

V =			20120405
DISTNAME =		check_esxi_hardware.py.$V
PKGNAME =		check_esxi_hardware-$V
CATEGORIES =		net

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

HOMEPAGE =		http://www.claudiokuenzler.com/nagios-plugins/check_esxi_hardware.php
MASTER_SITES =		http://www.claudiokuenzler.com/nagios-plugins/

EXTRACT_SUFX =

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

NO_BUILD =		Yes
NO_REGRESS =		Yes

RUN_DEPENDS =		devel/py-wbem

MODULES =		lang/python

WRKSRC =		${WRKDIR}

MODPY_ADJ_FILES=	check_esxi_hardware.py.$V

do-extract:
	@cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKDIR}/check_esxi_hardware.py.$V \
		${PREFIX}/libexec/nagios/check_esxi_hardware

.include <bsd.port.mk>
