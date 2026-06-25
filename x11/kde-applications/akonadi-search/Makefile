COMMENT =	libraries and daemons to implement searching in Akonadi
DISTNAME =	akonadi-search-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=	KPim6AkonadiSearchCore    0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiSearchDebug   0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiSearchPIM     0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiSearchXapian  0.0 # 0.0

WANTLIB += ${MODCARGO_WANTLIB} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6I18n KF6ItemModels KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6Runner KF6TextUtils
WANTLIB += KF6WidgetsAddons KPim6AkonadiAgentBase KPim6AkonadiCore
WANTLIB += KPim6AkonadiMime KPim6AkonadiPrivate KPim6Mime Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Widgets c++ execinfo
WANTLIB += m util xapian

MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	databases/xapian-core \
		devel/kf6/kcalendarcore \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kitemmodels \
		devel/kf6/krunner \
		devel/kf6/kwidgetsaddons \
		textproc/ktextaddons \
		x11/qt6/qtdeclarative \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION}

TEST_IS_INTERACTIVE =	X11

MODULES +=		devel/cargo

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No

MODCARGO_DIST_SUBDIR = ../cargo
MODCARGO_CARGOTOML =	${WRKSRC}/agent/rs/htmlparser/Cargo.toml

BUILD_DEPENDS +=	devel/corrosion

CONFIGURE_ENV +=	CARGO_HOME=${WRKDIR}/cargo-home
MAKE_ENV +=		CARGO_HOME=${WRKDIR}/cargo-home

CXXBRIDGE_V =		1.0.192
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

# This file includes MODCARGO_CARGOTOML and CXXBRIDGE_LOCKFILE crates.
.include "crates.inc"

.include <bsd.port.mk>
