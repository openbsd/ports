COMMENT =	management tool for password and sensitive data

V =		2.7.1
DISTNAME =	keepassxc-${V}

CATEGORIES =	security

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras X11 Xtst
WANTLIB += argon2 botan-2 c m minizip qrencode readline z

MASTER_SITES =	\
	https://github.com/keepassxreboot/keepassxc/releases/download/${V}/
EXTRACT_SUFX =	-src.tar.xz

MODULES =	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	archivers/minizip \
		security/argon2 \
		security/botan2 \
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
LIB_DEPENDS +=		devel/libusb1 \
			security/pcsc-lite
CONFIGURE_ARGS +=	-DWITH_XC_YUBIKEY=ON
WANTLIB += pcsclite usb-1.0
.endif

.if ${FLAVOR:Mbrowser}
# Sync with archs that ship Firefox and/or Chromium
ONLY_FOR_ARCHS =	amd64 i386 aarch64
CONFIGURE_ARGS +=	-DWITH_XC_BROWSER=ON \
			-DWITH_XC_NETWORKING=ON
.endif

FIX_CRLF_FILES =	src/keeshare/ShareExport.cpp

# ld: error: unable to find library -lX11
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${X11BASE}/lib"

post-patch:
	cd ${WRKSRC}/src/; sed -i -e 's/Q_OS_LINUX/Q_OS_UNIX/g' \
		gui/MainWindow.cpp \
		main.cpp \
		browser/BrowserSettingsWidget.cpp \
		browser/NativeMessageInstaller.cpp

.include <bsd.port.mk>
