COMMENT=	GnuPG Made Easy C++ bindings

VERSION =	2.0.0
DISTNAME =	gpgmepp-${VERSION}

CATEGORIES =	security devel

SHARED_LIBS +=  gpgmepp              4.0      # 27.1

HOMEPAGE =	https://www.gnupg.org/software/gpgme/

SITES =		${SITE_GNUPG:=gpgmepp/}
EXTRACT_SUFX =	.tar.xz

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} gpgme m

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		security/gpgme>=2.0

.include <bsd.port.mk>
