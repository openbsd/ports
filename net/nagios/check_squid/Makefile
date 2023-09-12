PKG_ARCH=	*

COMMENT=	Nagios plugin to monitor Squid proxies

GH_ACCOUNT=	DinoTools
GH_PROJECT=	monitoring-check_squid
GH_COMMIT=	9e7936bc6f396ea9395b289ab38df96dd044c634
REVISION=	0

V=		1.1.1pl20220729
DISTNAME=	monitoring-check_squid-$V
PKGNAME=	check_squid-$V
CATEGORIES=	sysutils net

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS+=	net/nagios/p5-Nagios-Plugin \
		www/squid

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_squid ${PREFIX}/libexec/nagios

.include <bsd.port.mk>
