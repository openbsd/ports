# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:33 sthen Exp $

PKG_ARCH=		*

COMMENT=		Nagios plugin to monitor OpenBGPd peers
DISTNAME=		check_openbgpd-1.10
CATEGORIES=		sysutils net

MAINTAINER=		Andrew Fresh <afresh1@openbsd.org>

HOMEPAGE=		http://openbsd.somedomain.net/nagios/
MASTER_SITES=		${HOMEPAGE}

# BSD
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

RUN_DEPENDS+=		net/monitoring-plugins

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_openbgpd ${WRKSRC}/README

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_openbgpd ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_openbgpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_openbgpd

.include <bsd.port.mk>
