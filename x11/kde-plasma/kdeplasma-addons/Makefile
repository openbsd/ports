COMMENT =	KDE Plasma add-ons
DISTNAME =	kdeplasma-addons-${VERSION}
PKGNAME =	kf6-kdeplasma-addons-${VERSION}

SHARED_LIBS +=  plasmapotdprovidercore    1.0 # 0.0
SHARED_LIBS +=	plasmaweatherdata         0.0 # 0.0
SHARED_LIBS +=	plasmaweatherion          0.0 # 0.0

WANTLIB += ${MODCARGO_WANTLIB} GL KF6AuthCore KF6CalendarEvents
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6DBusAddons KF6GlobalAccel
WANTLIB += KF6GuiAddons KF6Holidays KF6I18n KF6JobWidgets KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6Package KF6Runner
WANTLIB += KF6Service KF6SonnetCore KF6Svg KF6UnitConversion KF6WidgetsAddons
WANTLIB += KF6XmlGui KirigamiPlatform Plasma Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Positioning Qt6Qml Qt6Quick
WANTLIB += Qt6WebChannel Qt6WebChannelQuick Qt6WebEngineCore Qt6WebEngineQuick
WANTLIB += Qt6Widgets Qt6Xml c++ hidapi-libusb icui18n icuuc m
WANTLIB += usb-1.0

MODKDE_TRANSLATIONS =	Yes
MODKDE_ICON_CACHE = Yes

BUILD_DEPENDS =	archivers/gtar \
		devel/kf6/kitemmodels \
		devel/kf6/purpose \
		devel/kf6/knewstuff \
		graphics/kirigami-addons

RUN_DEPENDS =	devel/kf6/kitemmodels \
		graphics/kirigami-addons \
		x11/dbus,-suid

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdeclarative \
		devel/kf6/kglobalaccel \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kauth \
		devel/kf6/kdbusaddons \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kpackage \
		devel/kf6/krunner \
		devel/kf6/kservice \
		comms/libhidapi \
		devel/kf6/kirigami \
		devel/libusb1 \
		devel/kf6/kunitconversion \
		devel/kf6/kguiaddons \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		devel/kf6/ksvg \
		textproc/icu4c \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES +=		devel/cargo

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No

MODCARGO_DIST_SUBDIR = ../cargo
MODCARGO_CARGOTOML =	${WRKSRC}/kdeds/kameleon/qmk/kameleon-qmk-helper/Cargo.toml

BUILD_DEPENDS +=		devel/corrosion

CONFIGURE_ENV +=	CARGO_HOME=${WRKDIR}/cargo-home
MAKE_ENV +=		CARGO_HOME=${WRKDIR}/cargo-home

CXXBRIDGE_V =		1.0.194
CXXBRIDGE_LOCKFILE =	cxxbridge-cargo.lock

pre-configure:
	# We ship our own Cargo.lock for cxxbridge-cmd so the build resolves
	# against the vendored crates instead of reaching out to crates.io
	cp ${FILESDIR}/${CXXBRIDGE_LOCKFILE} \
		${MODCARGO_VENDOR_DIR}/cxxbridge-cmd-${CXXBRIDGE_V}/Cargo.lock
	# Drop Cargo.lock  entry from .cargo-checksum.json because otherwise
	# cargo's integrity check fails the frozen build.
	cd ${MODCARGO_VENDOR_DIR}/cxxbridge-cmd-${CXXBRIDGE_V} && \
		sed -i 's,"Cargo.lock":"[0-9a-f]*"\,,,' .cargo-checksum.json
	mkdir -p ${WRKDIR}/cargo-home
	printf '%s\n' \
		'[source.crates-io]' \
		'replace-with = "modcargo"' \
		'[source.modcargo]' \
		'directory = "${MODCARGO_VENDOR_DIR}"' \
		'[net]' \
		'offline = true' \
		> ${WRKDIR}/cargo-home/config.toml

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

# This file includes MODCARGO_CARGOTOML and CXXBRIDGE_LOCKFILE crates.
.include "crates.inc"

.include <bsd.port.mk>
