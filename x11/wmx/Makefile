# $OpenBSD: Makefile,v 1.30 2019/07/14 02:16:53 naddy Exp $

COMMENT=	minimal window manager

DISTNAME=	wmx-8
CATEGORIES=	x11
REVISION =	4

HOMEPAGE=	http://www.all-day-breakfast.com/wmx/
MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

WANTLIB += ICE SM X11 Xau Xcomposite Xdmcp Xext Xft Xpm Xrender c expat
WANTLIB += fontconfig freetype m ${COMPILER_LIBCXX} xcb z

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
