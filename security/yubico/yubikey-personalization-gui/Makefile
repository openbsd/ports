# $OpenBSD: Makefile,v 1.13 2020/07/11 22:54:39 sthen Exp $

COMMENT=	Qt GUI to configure YubiKeys

YK_PROJECT=	yubikey-personalization-gui
DISTNAME=	yubikey-personalization-gui-3.1.25
REVISION=	3

CATEGORIES=	x11

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m
WANTLIB += ykpers-1 yubikey

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	security/yubico/yubico-c \
		security/yubico/yubikey-personalization

MODULES=	devel/qmake x11/qt5
NO_TEST=	Yes

R = ${WRKSRC}/resources/lin/yubikey-personalization-gui

do-install:
	${INSTALL_PROGRAM} \
	    ${WRKBUILD}/build/release/yubikey-personalization-gui ${PREFIX}/bin
	cd ${PREFIX}/share && ${INSTALL_DATA_DIR} applications pixmaps
	${INSTALL_DATA} $R.1 ${PREFIX}/man/man1
	${INSTALL_DATA} $R.desktop ${PREFIX}/share/applications
	${INSTALL_DATA} $R.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
