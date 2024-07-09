COMMENT=	C++ class library for working with Internet mail

GH_ACCOUNT=	kisli
GH_PROJECT=	vmime
GH_COMMIT=	43b262bd8c79fbaadc9522eaa04a40427782e0c6

DISTNAME=	vmime
PKGNAME=	libvmime-20240611

SHARED_LIBS+=	vmime	4.1	# 0.0

CATEGORIES=	devel mail

HOMEPAGE=	http://www.vmime.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += icuuc m pthread ${COMPILER_LIBCXX}

# C++11 (else falls back on boost)
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	archivers/bzip2
LIB_DEPENDS=	textproc/icu4c

CONFIGURE_ARGS+=-DVMIME_HAVE_SASL_SUPPORT=OFF \
		-DVMIME_HAVE_TLS_SUPPORT=OFF

FIX_CRLF_FILES=	src/vmime/charsetConverter_icu.cpp

.include <bsd.port.mk>
