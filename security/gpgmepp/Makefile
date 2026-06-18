COMMENT=	GnuPG Made Easy C++ bindings

VERSION=	2.1.0
DISTNAME=	gpgmepp-${VERSION}

CATEGORIES=	security devel

# ver from LIBGPGMEPP_LT_* in CMakeLists.txt
SHARED_LIBS +=  gpgmepp              5.0      # 8.1.0

HOMEPAGE=	https://www.gnupg.org/software/gpgme/

SITES=		${SITE_GNUPG:=gpgmepp/}
EXTRACT_SUFX=	.tar.xz

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} gpgme m

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	security/gpgme>=2.1.00

.include <bsd.port.mk>
