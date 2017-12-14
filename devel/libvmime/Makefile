# $OpenBSD: Makefile,v 1.34 2017/12/14 17:07:17 jca Exp $

COMMENT=	C++ class library for working with Internet mail

GH_ACCOUNT=     kisli
GH_PROJECT=     vmime
GH_COMMIT=      243efb267fe539958610ef1e2142a36dfbcd3c28

DISTNAME=	vmime
PKGNAME=	libvmime-0.9.4

SHARED_LIBS+=	vmime	4.0	# 0.0

CATEGORIES=	devel mail

HOMEPAGE=	http://www.vmime.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += icuuc m pthread ${COMPILER_LIBCXX}

# C++11 (else falls back on boost)
COMPILER=	base-clang ports-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	archivers/bzip2
LIB_DEPENDS=	textproc/icu4c

CONFIGURE_ARGS+=-DVMIME_HAVE_SASL_SUPPORT=OFF \
		-DVMIME_HAVE_TLS_SUPPORT=OFF

.include <bsd.port.mk>
