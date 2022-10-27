COMMENT=	free lossless audio codec

DISTNAME=	flac-1.4.2
CATEGORIES=	audio archivers
HOMEPAGE=	https://www.xiph.org/flac/
SHARED_LIBS +=  FLAC                 13.0     # 12.0
SHARED_LIBS +=  FLAC++               11.0     # 10.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/flac/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c iconv m ogg ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	audio/libogg converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-altivec \
		--disable-doxygen-docs \
		--disable-thorough-tests
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# powerpc64 doesn't support VSX yet
CONFIGURE_ARGS += --disable-vsx

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
