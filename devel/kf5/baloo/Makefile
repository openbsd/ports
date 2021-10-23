# $OpenBSD: Makefile,v 1.28 2021/09/10 08:42:02 rsadowski Exp $

COMMENT =	KDE file search and metadata handling framework
DISTNAME =	baloo-${VERSION}
PKGNAME =	kf5-${DISTNAME}
EPOCH =		0

SHARED_LIBS +=  KF5Baloo                  4.1 # 4.0
SHARED_LIBS +=  KF5BalooEngine            5.1 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5FileMetaData
WANTLIB += KF5I18n KF5Solid Qt5Core Qt5DBus Qt5Network Qt5Qml
WANTLIB += lmdb m

BUILD_DEPENDS	=	devel/gettext,-tools \
			devel/kf5/kidletime>=${MODKF5_VERSION} \
			devel/kf5/kio>=${MODKF5_VERSION} \
			devel/kf5/kcrash>=${MODKF5_VERSION}

RUN_DEPENDS =		devel/kf5/kidletime>=${MODKF5_VERSION} \
			devel/kf5/kio>=${MODKF5_VERSION} \
			devel/kf5/kcrash>=${MODKF5_VERSION}

LIB_DEPENDS =		databases/lmdb \
			devel/kf5/kconfig>=${MODKF5_VERSION} \
			devel/kf5/kfilemetadata>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION} \
			devel/kf5/solid>=${MODKF5_VERSION} \
			devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
			x11/qt5/qtdeclarative

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Inotify=On

.include <bsd.port.mk>
