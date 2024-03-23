COMMENT =	KDE file search and metadata handling framework
DISTNAME =	baloo-${VERSION}
PKGNAME =	kf5-${DISTNAME}
EPOCH =		0
REVISION =	0

SHARED_LIBS +=  KF5Baloo                  5.0 # 4.0
SHARED_LIBS +=  KF5BalooEngine            8.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5FileMetaData KF5I18n KF5IdleTime KF5KIOCore
WANTLIB += KF5Service KF5Solid Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml c lmdb m

WANTLIB += lib/inotify/inotify

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	databases/lmdb \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kcrash>=${MODKF5_VERSION} \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/kfilemetadata>=${MODKF5_VERSION} \
		devel/kf5/kfilemetadata>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/solid>=${MODKF5_VERSION} \
		devel/kf5/kidletime>=${MODKF5_VERSION} \
		devel/libinotify \
		x11/qt5/qtdeclarative

# https://community.kde.org/Frameworks/6.0_Release_notes
CONFIGURE_ARGS +=	-DBUILD_INDEXER_SERVICE=OFF

.include <bsd.port.mk>
