# $OpenBSD: Makefile,v 1.61 2020/07/25 09:17:18 jasper Exp $

COMMENT=	free lossless audio codec

DISTNAME=	flac-1.3.3
CATEGORIES=	audio archivers
HOMEPAGE=	https://www.xiph.org/flac/
SHARED_LIBS +=  FLAC                 11.0     # 11.0
SHARED_LIBS +=  FLAC++               9.0      # 9.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/flac/ \
		https://ftp.osuosl.org/pub/xiph/releases/flac/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c iconv m ogg ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	audio/libogg converters/libiconv

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-sse \
		--disable-altivec \
		--disable-doxygen-docs \
		--disable-thorough-tests
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# powerpc64 doesn't support VSX yet
CONFIGURE_ARGS += --disable-vsx

post-install:
	${SUBST_CMD} ${PREFIX}/man/man1/flac.1
	rm ${PREFIX}/man/man1/flac.1.beforesubst

.include <bsd.port.mk>
