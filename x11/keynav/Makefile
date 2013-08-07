# $OpenBSD: Makefile,v 1.7 2013/08/07 21:33:04 naddy Exp $

COMMENT=	turns your keyboard into an fast pointer mover

DISTNAME=	keynav-20080614.01
PKGNAME=	${DISTNAME:S/.//}
REVISION=	1

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/keynav/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://semicomplete.googlecode.com/files/

WANTLIB=	X11 Xau Xdmcp Xext Xtst c pthread-stubs xcb
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/keynav ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/keynav
	${INSTALL_DATA} ${WRKSRC}/keynavrc ${PREFIX}/share/examples/keynav/

.include <bsd.port.mk>
