# $OpenBSD: Makefile,v 1.50 2016/08/30 10:37:37 jasper Exp $

COMMENT=	free lossless audio codec

DISTNAME=	flac-1.3.1
REVISION=	0
CATEGORIES=	audio archivers
HOMEPAGE=	https://www.xiph.org/flac/
SHARED_LIBS +=  FLAC                 10.0     # 11.0
SHARED_LIBS +=  FLAC++               9.0      # 9.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/flac/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c iconv m ogg stdc++

LIB_DEPENDS=	audio/libogg converters/libiconv

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-altivec \
		--disable-doxygen-docs \
		--disable-thorough-tests \
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	cd ${PREFIX}/share/doc && mv ${DISTNAME} flac
	${SUBST_CMD} ${PREFIX}/man/man1/flac.1
	rm ${PREFIX}/man/man1/flac.1.beforesubst

.include <bsd.port.mk>
