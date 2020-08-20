# $OpenBSD: Makefile,v 1.32 2020/08/20 18:01:47 rsadowski Exp $

COMMENT =	management tool for password and sensitive data

V =		2.6.1
DISTNAME =	keepassxc-${V}

CATEGORIES =	security

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras X11 Xi Xtst
WANTLIB += argon2 c gcrypt gpg-error m qrencode quazip5 readline
WANTLIB += sodium z

MASTER_SITES =	https://github.com/keepassxreboot/keepassxc/releases/download/${V}/
EXTRACT_SUFX =	-src.tar.xz

MODULES =	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	archivers/quazip \
		security/libgcrypt \
		security/libsodium \
		security/argon2 \
		graphics/libqrencode \
		x11/qt5/qtsvg \
		x11/qt5/qtx11extras  # needed for auto-type

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

BUILD_DEPENDS =	textproc/asciidoctor

CONFIGURE_ARGS=	-DCMAKE_INSTALL_MANDIR="man" \
		-DWITH_GUI_TESTS=ON \
		-DWITH_XC_AUTOTYPE=ON \
		-DWITH_XC_SSHAGENT=ON \
		-DWITH_XC_UPDATECHECK=OFF \
		-DWITH_XC_FDOSECRETS=ON \
		-DWITH_XC_KEESHARE=ON

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
# Sync with archs that ship Firefox and/or Chromium
ONLY_FOR_ARCHS =	amd64 i386 aarch64
CONFIGURE_ARGS +=	-DWITH_XC_BROWSER=ON \
			-DWITH_XC_NETWORKING=ON
.endif

# ld: error: unable to find library -lX11
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${X11BASE}/lib"

post-patch:
	cd ${WRKSRC}/src/; sed -i -e 's/Q_OS_LINUX/Q_OS_UNIX/g' \
		core/ScreenLockListenerPrivate.cpp \
		gui/MainWindow.cpp \
		main.cpp \
		browser/BrowserSettingsWidget.cpp \
		browser/NativeMessageInstaller.cpp

.include <bsd.port.mk>
