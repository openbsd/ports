COMMENT =	management tool for password and sensitive data

V =		2.7.7
DISTNAME =	keepassxc-${V}

CATEGORIES =	security

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras X11 Xtst
WANTLIB += argon2 botan-2 c m minizip qrencode readline z

SITES =	https://github.com/keepassxreboot/keepassxc/releases/download/${V}/
EXTRACT_SUFX =	-src.tar.xz

MODULES =	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	archivers/minizip \
		graphics/libqrencode \
		security/argon2 \
		security/botan2 \
		x11/qt5/qtsvg \
		x11/qt5/qtx11extras  # needed for auto-type

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

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

# everything (executables, modules, docs) except tests
ALL_TARGET =	keepassxc keepassxc-cli \
		keepassxc-autotype-xcb \
		docs manpages

.if ${FLAVOR:Myubikey}
WANTLIB += pcsclite usb-1.0
LIB_DEPENDS +=		devel/libusb1 \
			security/pcsc-lite
CONFIGURE_ARGS +=	-DWITH_XC_YUBIKEY=ON
.endif

.if ${FLAVOR:Mbrowser}
# Sync with archs that ship Firefox and/or Chromium
ONLY_FOR_ARCHS =	amd64 i386 aarch64
CONFIGURE_ARGS +=	-DWITH_XC_BROWSER=ON \
			-DWITH_XC_NETWORKING=ON \
			-DWITH_XC_BROWSER_PASSKEYS=ON
# helper executable
ALL_TARGET +=		keepassxc-proxy
.endif

FIX_CRLF_FILES =	src/keeshare/ShareExport.cpp

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

# - MainWindow.cpp has one minor key binding behind Q_OS_* no other BSD seems
#   to patch... drop or upstream?  rest got fixed 2018.
# - browser/BrowserSettingsWidget.cpp has a visibility fix no other BSD seems
#   to patch... drop or upstream?
post-patch:
	cd ${WRKSRC}/src/; sed -i -e 's/Q_OS_LINUX/Q_OS_UNIX/g' \
		gui/MainWindow.cpp \
		gui/Icons.cpp \
		browser/BrowserSettingsWidget.cpp

# build whatever is left (ca. 200 GUI test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
