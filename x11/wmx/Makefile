# $OpenBSD: Makefile,v 1.27 2017/07/26 22:45:34 sthen Exp $

COMMENT=	minimal window manager

DISTNAME=	wmx-8
CATEGORIES=	x11
REVISION =	2

HOMEPAGE=	http://www.all-day-breakfast.com/wmx/
MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB += ICE SM X11 Xau Xcomposite Xdmcp Xext Xft Xpm Xrender c expat
WANTLIB += fontconfig freetype m pthread-stubs ${COMPILER_LIBCXX} xcb z

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
