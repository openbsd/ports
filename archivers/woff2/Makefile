# $OpenBSD: Makefile,v 1.4 2018/09/30 08:47:42 landry Exp $

COMMENT=		Web Open Font Format 2.0 library

GH_ACCOUNT=		google
GH_PROJECT=		woff2
GH_TAGNAME=		v1.0.2

SHARED_LIBS +=  woff2common               0.0 # 1.0
SHARED_LIBS +=  woff2dec                  0.0 # 1.0
SHARED_LIBS +=  woff2enc                  0.0 # 1.0

CATEGORIES=		archivers

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} brotlidec brotlienc m

# C++11
COMPILER=		base-clang ports-gcc ports-clang
MODULES=		devel/cmake

LIB_DEPENDS=		archivers/brotli

NO_TEST=		Yes

.include <bsd.port.mk>
