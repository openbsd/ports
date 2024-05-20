COMMENT =	KDE file search and metadata handling framework
DISTNAME =	baloo-${VERSION}

SHARED_LIBS +=  KF6Baloo                  0.0 # 0.0
SHARED_LIBS +=  KF6BalooEngine            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6ConfigCore KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6FileMetaData KF6I18n KF6IdleTime KF6KIOCore
WANTLIB += KF6Solid Qt6Core Qt6DBus Qt6Network Qt6Qml c lmdb m

WANTLIB += lib/inotify/inotify

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	databases/lmdb \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kcrash>=${MODKF6_VERSION} \
		devel/kf6/kdbusaddons>=${MODKF6_VERSION} \
		devel/kf6/kfilemetadata>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kidletime>=${MODKF6_VERSION} \
		devel/kf6/kio>=${MODKF6_VERSION} \
		devel/kf6/solid>=${MODKF6_VERSION} \
		devel/libinotify \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
