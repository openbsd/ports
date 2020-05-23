# $OpenBSD: Makefile,v 1.21 2020/05/23 07:41:14 rsadowski Exp $

COMMENT-main =	KDE file search and metadata handling framework
COMMENT-icons =	icons for baloo
DISTNAME =	baloo-${VERSION}
PKGNAME-main =	kf5-${DISTNAME}
PKGNAME-icons =	kf5-icons-${DISTNAME}
EPOCH-main =	0
REVISION-icons =0
REVISION-main =	0

SHARED_LIBS =   KF5Baloo                  3.0
SHARED_LIBS +=  KF5BalooXapian            3.0
SHARED_LIBS +=  KF5BalooEngine            1.0 # 5.46

WANTLIB-icons =

WANTLIB-main += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5FileMetaData
WANTLIB-main += KF5I18n KF5Solid Qt5Core Qt5DBus Qt5Network Qt5Qml
WANTLIB-main += lmdb m

# split icons off main package to deconflict with KDE4's baloo
# To avoid bulk build conflicts use it like:
# BUILD_DEPENDS +=devel/kf5/baloo,-main>=${MODKF5_VERSION}
# RUN_DEPENDS +=>-devel/kf5/baloo,-icons>=${MODKF5_VERSION}
MULTI_PACKAGES =	-main -icons

BUILD_DEPENDS	=	devel/gettext,-tools \
			devel/kf5/kidletime>=${MODKF5_VERSION} \
			devel/kf5/kio>=${MODKF5_VERSION} \
			devel/kf5/kcrash>=${MODKF5_VERSION}

RUN_DEPENDS-main =	devel/kf5/kidletime>=${MODKF5_VERSION} \
			devel/kf5/kio>=${MODKF5_VERSION} \
			devel/kf5/kcrash>=${MODKF5_VERSION}

RUN_DEPENDS-icons =	x11/gtk+3,-guic

LIB_DEPENDS-main =	databases/lmdb \
			devel/kf5/kconfig>=${MODKF5_VERSION} \
			devel/kf5/kfilemetadata>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION} \
			devel/kf5/solid>=${MODKF5_VERSION} \
			devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
			x11/qt5/qtdeclarative

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Inotify=On

.include <bsd.port.mk>
