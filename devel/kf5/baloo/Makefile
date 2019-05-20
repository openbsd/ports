# $OpenBSD: Makefile,v 1.19 2019/05/20 22:15:04 naddy Exp $

COMMENT-main =	KDE file search and metadata handling framework
COMMENT-icons =	icons for baloo
DISTNAME =	baloo-${VERSION}
PKGNAME-main =	kf5-${DISTNAME}
PKGNAME-icons =	kf5-icons-${DISTNAME}
EPOCH-main =	0

SHARED_LIBS =   KF5Baloo                  2.2
SHARED_LIBS +=  KF5BalooXapian            2.2
SHARED_LIBS +=  KF5BalooEngine            0.2 # 5.46

WANTLIB-icons =

WANTLIB-main += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5FileMetaData
WANTLIB-main += KF5I18n KF5Solid Qt5Core Qt5DBus Qt5Network Qt5Qml
WANTLIB-main += lmdb m

# split icons off main package to deconflict with KDE4's baloo
# To avoid bulk build conflicts use it like:
# BUILD_DEPENDS +=devel/kf5/baloo,-main
# RUN_DEPENDS +=>-devel/kf5/baloo,-icons
MULTI_PACKAGES =	-main -icons

BUILD_DEPENDS	+=	devel/gettext,-tools \
			devel/kf5/kidletime \
			devel/kf5/kio \
			devel/kf5/kcrash

RUN_DEPENDS-main =	devel/kf5/kidletime \
			devel/kf5/kio \
			devel/kf5/kcrash

RUN_DEPENDS-icons =	x11/gtk+3,-guic

LIB_DEPENDS-main =	databases/lmdb \
			devel/kf5/kconfig \
			devel/kf5/kidletime \
			devel/kf5/kfilemetadata \
			devel/kf5/ki18n \
			devel/kf5/solid \
			devel/kf5/kcoreaddons \
			x11/qt5/qtdeclarative

.include <bsd.port.mk>
