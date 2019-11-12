# $OpenBSD: Makefile,v 1.25 2019/11/12 17:03:10 rsadowski Exp $

COMMENT =	management tool for password and sensitive data

V =		2.5.1
DISTNAME =	keepassxc-${V}

CATEGORIES =	security

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras X11 Xi Xtst
WANTLIB += argon2 c gcrypt gpg-error m qrencode readline sodium
WANTLIB += z

MASTER_SITES =	https://github.com/keepassxreboot/keepassxc/releases/download/${V}/
EXTRACT_SUFX =	-src.tar.xz

MODULES =	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	security/libgcrypt \
		security/libsodium \
		security/argon2 \
		graphics/libqrencode \
		x11/qt5/qtsvg \
		x11/qt5/qtx11extras  # needed for auto-type

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS=	-DCMAKE_INSTALL_MANDIR="man" \
		-DWITH_GUI_TESTS=ON \
		-DWITH_XC_AUTOTYPE=ON \
		-DWITH_XC_SSHAGENT=ON \
		-DWITH_XC_FDOSECRETS=ON

TEST_IS_INTERACTIVE =	X11

FLAVORS =	browser yubikey
FLAVOR ?=

.if ${FLAVOR:Myubikey}
LIB_DEPENDS +=		security/yubico/yubico-c \
			security/yubico/yubikey-personalization
CONFIGURE_ARGS +=	-DWITH_XC_YUBIKEY=ON
WANTLIB += yubikey ykpers-1
.endif

.if ${FLAVOR:Mbrowser}
CONFIGURE_ARGS +=	-DWITH_XC_BROWSER=ON \
			-DWITH_XC_NETWORKING=ON
.endif

post-patch:
	cd ${WRKSRC}/src/; sed -i -e 's/Q_OS_LINUX/Q_OS_UNIX/g' \
		browser/HostInstaller.cpp \
		core/ScreenLockListenerPrivate.cpp \
		gui/MainWindow.cpp \
		main.cpp

.include <bsd.port.mk>
