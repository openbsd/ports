# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:23 sthen Exp $

COMMENT=		Type1 font installation helper
DISTNAME=		type1inst-0.6.1
CATEGORIES=		x11 print

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=X11/xutils/}

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/type1inst ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/t1embed ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/type1inst.man ${PREFIX}/man/man1/type1inst.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/type1inst
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/type1inst

.include <bsd.port.mk>
