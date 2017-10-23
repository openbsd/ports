# $OpenBSD: Makefile,v 1.28 2017/10/23 17:11:06 sthen Exp $

COMMENT=	minimal window manager

DISTNAME=	wmx-8
CATEGORIES=	x11
REVISION =	3

HOMEPAGE=	http://www.all-day-breakfast.com/wmx/
MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB += ICE SM X11 Xau Xcomposite Xdmcp Xext Xft Xpm Xrender c expat
WANTLIB += fontconfig freetype m ${COMPILER_LIBCXX} xcb z

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
