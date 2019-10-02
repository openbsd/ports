# $OpenBSD: Makefile,v 1.29 2019/10/02 19:00:49 rsadowski Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.5.0
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.xz
REVISION=	1

SHARED_LIBS=	matroska	4.4

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ebml m

COMPILER =	base-clang ports-gcc base-gcc

MODULES +=	devel/cmake

CONFIGURE_ARGS+=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS +=	textproc/libebml>=1.3.7

NO_TEST =	Yes

.include <bsd.port.mk>
