# $OpenBSD: Makefile,v 1.24 2019/07/12 20:48:34 sthen Exp $

COMMENT=		No-IP.com Dynamic DNS client

V=			2.1.9
DISTNAME=		noip-${V}
PKGNAME=		no-ip-${V}
REVISION=		5
CATEGORIES=		net

HOMEPAGE=		http://www.no-ip.com/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}client/linux/

NO_TEST=		Yes

ALL_TARGET=		noip2

do-configure:
	@${SUBST_CMD} ${WRKSRC}/noip2.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/noip2 ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/no-ip/
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/no-ip/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/no-ip
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/no-ip/no-ip2.conf

.include <bsd.port.mk>
