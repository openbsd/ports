# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:33 sthen Exp $

PKG_ARCH =	*

COMMENT =	Nagios plugin to monitor the status of ESX/i hardware

V =		20161013
REVISION =	0
DISTNAME =	check_esxi_hardware.py.$V
PKGNAME =	check_esxi_hardware-$V
CATEGORIES =	net

HOMEPAGE =	http://www.claudiokuenzler.com/nagios-plugins/check_esxi_hardware.php
MASTER_SITES =	http://www.claudiokuenzler.com/nagios-plugins/

EXTRACT_SUFX =

# GPLv2+
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-wbem>=0.8.0pre728

MODULES =	lang/python

WRKSRC =	${WRKDIR}

MODPY_ADJ_FILES=	check_esxi_hardware.py.$V

do-extract:
	@cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKDIR}/check_esxi_hardware.py.$V \
		${PREFIX}/libexec/nagios/check_esxi_hardware
	ln -s check_esxi_hardware ${PREFIX}/libexec/nagios/check_esxi_hardware.py

.include <bsd.port.mk>
