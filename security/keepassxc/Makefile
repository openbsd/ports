COMMENT =	management tool for passwords and sensitive data

V =		2.8.0
REVISION =	0
DISTNAME =	keepassxc-${V}

CATEGORIES =	security

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Concurrent Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Svg Qt6SvgWidgets Qt6Widgets X11 Xtst
WANTLIB += botan-3 c m minizip pcsclite qrencode readline usb-1.0
WANTLIB += xkbcommon z

SITES =	https://github.com/keepassxreboot/keepassxc/releases/download/${V}/
EXTRACT_SUFX =	-src.tar.xz

MODULES =	x11/qt6 \
		devel/cmake

LIB_DEPENDS =	archivers/minizip \
		graphics/libqrencode \
		security/botan3 \
		x11/qt6/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

BUILD_DEPENDS =	textproc/asciidoctor

# Yubikey
LIB_DEPENDS +=		devel/libusb1 \
			security/pcsc-lite

CONFIGURE_ARGS=	-DCMAKE_INSTALL_MANDIR="man" \
		-DWITH_GUI_TESTS=ON \
		-DKPXC_FEATURE_SSHAGENT=ON \
		-DKPXC_FEATURE_UPDATES=OFF \
		-DKPXC_FEATURE_FDOSECRETS=ON

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=On

CONFIGURE_ARGS += 	-DWITH_CCACHE=OFF

TEST_IS_INTERACTIVE =	X11

FLAVORS =	browser network
FLAVOR ?=

.if ${FLAVOR:Mbrowser}
# Sync with archs that ship Firefox and/or Chromium
ONLY_FOR_ARCHS =	amd64 i386 aarch64
CONFIGURE_ARGS +=	-DKPXC_FEATURE_BROWSER=ON
.else
CONFIGURE_ARGS +=	-DKPXC_FEATURE_BROWSER=OFF
.endif

.if ${FLAVOR:Mnetwork}
CONFIGURE_ARGS +=	-DKPXC_FEATURE_NETWORK=ON
.else
CONFIGURE_ARGS +=	-DKPXC_FEATURE_NETWORK=OFF
.endif


MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

# - MainWindow.cpp has one minor key binding behind Q_OS_* no other BSD seems
#   to patch... drop or upstream?  rest got fixed 2018.
# - Icons.cpp has a Qt theme/icon issue fix... untested if this effects us.
post-patch:
	cd ${WRKSRC}/src/; sed -i -e 's/Q_OS_LINUX/Q_OS_UNIX/g' \
		core/Config.cpp \
		browser/BrowserSettingsWidget.cpp \
		gui/DatabaseOpenDialog.cpp

# build whatever is left (ca. 200 GUI test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
