# $OpenBSD: Makefile,v 1.23 2019/07/12 20:51:24 sthen Exp $

COMMENT=		wm-dockapp; shows the current date

DISTNAME=		wmdate-0.7
REVISION=		3
CATEGORIES=		x11 x11/windowmaker

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c dockapp

LIB_DEPENDS=		devel/libdockapp

NO_TEST=		Yes
CONFIGURE_STYLE=	imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmdate
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wmdate

.include <bsd.port.mk>
