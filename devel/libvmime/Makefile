# $OpenBSD: Makefile,v 1.33 2017/09/13 10:38:34 robert Exp $

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

MODULES=	devel/cmake

BUILD_DEPENDS=	archivers/bzip2
LIB_DEPENDS=	textproc/icu4c

CONFIGURE_ARGS+=-DVMIME_HAVE_SASL_SUPPORT=OFF \
		-DVMIME_HAVE_TLS_SUPPORT=OFF

.include <bsd.port.mk>
