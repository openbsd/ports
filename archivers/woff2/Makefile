# $OpenBSD: Makefile,v 1.1.1.1 2017/10/13 12:03:43 ajacoutot Exp $

COMMENT=		Web Open Font Format 2.0 library

GH_ACCOUNT=		google
GH_PROJECT=		woff2
GH_TAGNAME=		v1.0.1

SHARED_LIBS +=  woff2common               0.0 # 1.0
SHARED_LIBS +=  woff2dec                  0.0 # 1.0
SHARED_LIBS +=  woff2enc                  0.0 # 1.0

CATEGORIES=		archivers

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} brotlidec brotlienc m

MODULES=		devel/cmake

LIB_DEPENDS=		archivers/brotli

NO_TEST=		Yes

.include <bsd.port.mk>
