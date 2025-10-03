COMMENT=	C++ class library for working with Internet mail

GH_ACCOUNT=	kisli
GH_PROJECT=	vmime
GH_COMMIT=	7046a4360bbeea21d1d8b5cfa4589bb4df7f980d

DISTNAME=	vmime
PKGNAME=	libvmime-20250917

SHARED_LIBS+=	vmime	4.2	# 0.0

CATEGORIES=	devel mail

HOMEPAGE=	http://www.vmime.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += icuuc m pthread ${COMPILER_LIBCXX}
WANTLIB += crypto ssl

# C++11 (else falls back on boost)
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	archivers/bzip2
LIB_DEPENDS=	textproc/icu4c

CONFIGURE_ARGS+=-DVMIME_HAVE_SASL_SUPPORT=OFF \
		-DVMIME_HAVE_TLS_SUPPORT=ON \
		-DVMIME_TLS_SUPPORT_LIB=openssl

FIX_CRLF_FILES=	src/vmime/charsetConverter_icu.cpp

.include <bsd.port.mk>
