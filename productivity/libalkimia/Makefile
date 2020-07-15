# $OpenBSD: Makefile,v 1.13 2020/07/15 20:10:34 rsadowski Exp $

COMMENT =	KDE financial data handling library
CATEGORIES =	productivity x11

V =		7.0.1
PKGNAME =	libalkimia-$V
DISTNAME =	alkimia-$V

SHARED_LIBS =  alkimia5  0.0 # 7.0.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus gmp m

HOMEPAGE =	https://community.kde.org/Alkimia/libalkimia

MASTER_SITES =	${MASTER_SITE_KDE:=stable/alkimia/$V/src/}
EXTRACT_SUFX =	.tar.xz

# LGPLv2.1+
PERMIT_PACKAGE = Yes

MODULES =	devel/kf5

LIB_DEPENDS =	devel/gmp

# libalkimia and its dependent kmymoney require the C++ template code in
# gmpxx.h but do not link with libgmpxx
BUILD_DEPENDS =	devel/gmp,-cxx
RUN_DEPENDS =	devel/gmp,-cxx

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

.include <bsd.port.mk>
