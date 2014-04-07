# $OpenBSD: Makefile,v 1.5 2014/04/07 12:32:23 sthen Exp $

PKG_ARCH=		*

COMMENT=		Nagios plugin to monitor OpenBGPd peers
DISTNAME=		check_openbgpd-1.5
REVISION=		1
CATEGORIES=		sysutils net

MAINTAINER=		Andrew Fresh <andrew@afresh1.com>

HOMEPAGE=		http://openbsd.somedomain.net/nagios/
MASTER_SITES=		http://monitoringexchange.org/attachment/download/Check-Plugins/Software/Misc/check_openbgpd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

RUN_DEPENDS+=		net/nagios/plugins

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_openbgpd ${WRKSRC}/README

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_openbgpd ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_openbgpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_openbgpd

.include <bsd.port.mk>
