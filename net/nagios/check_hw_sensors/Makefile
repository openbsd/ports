# $OpenBSD: Makefile,v 1.6 2014/04/07 12:32:23 sthen Exp $

PKG_ARCH=		*

COMMENT=		Nagios plugin to monitor sysctl hw.sensors
DISTNAME=		check_hw_sensors-1.42
REVISION=		1
CATEGORIES=		sysutils net

MAINTAINER=		Andrew Fresh <andrew@afresh1.com>

HOMEPAGE=		http://openbsd.somedomain.net/nagios/check_hw_sensors.html
MASTER_SITES=		http://monitoringexchange.org/attachment/download/Check-Plugins/Operating-Systems/BSD/OpenBSD/check_hw_sensors/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

RUN_DEPENDS+=		net/nagios/plugins

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_hw_sensors

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_hw_sensors ${PREFIX}/libexec/nagios

.include <bsd.port.mk>
