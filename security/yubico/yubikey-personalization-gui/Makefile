# $OpenBSD: Makefile,v 1.1.1.1 2015/11/12 15:18:47 sthen Exp $

COMMENT=	Qt GUI to configure YubiKeys

YK_PROJECT=	yubikey-personalization-gui
DISTNAME=	yubikey-personalization-gui-3.1.23
REVISION=	1

CATEGORIES=	x11

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread stdc++ ykpers-1 yubikey

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	security/yubico/yubico-c \
		security/yubico/yubikey-personalization

MODULES=	x11/qt4
USE_GMAKE=	Yes
NO_TEST=	Yes

do-configure:
	cd ${WRKSRC}; CXXFLAGS="${CXXFLAGS}" qmake4

R = ${WRKSRC}/resources/lin/yubikey-personalization-gui

do-install:
	${INSTALL_PROGRAM} \
	    ${WRKSRC}/build/release/yubikey-personalization-gui ${PREFIX}/bin
	cd ${PREFIX}/share && ${INSTALL_DATA_DIR} applications pixmaps
	${INSTALL_DATA} $R.1 ${PREFIX}/man/man1
	${INSTALL_DATA} $R.desktop ${PREFIX}/share/applications
	${INSTALL_DATA} $R.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
