COMMENT=	GnuPG Made Easy Qt bindings

VERSION =	2.1.0
DISTNAME =	qgpgme-${VERSION}

CATEGORIES =	security devel

HOMEPAGE =	https://www.gnupg.org/software/gpgme/

# ver from LIBQGPGME_LT_* in CMakeLists.txt
SHARED_LIBS +=  qgpgmeqt6            2.0      # 23.8.0

SITES =		${SITE_GNUPG:=qgpgme/}
EXTRACT_SUFX =	.tar.xz

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core gpg-error gpgme gpgmepp
WANTLIB += m

MODULES =		devel/cmake \
			x11/qt6

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		security/gpgme>=2.1.0 \
			security/gpgmepp>=2.1.0 \

CONFIGURE_ARGS =	-DBUILD_WITH_QT5=OFF

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
