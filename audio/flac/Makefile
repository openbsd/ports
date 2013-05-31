# $OpenBSD: Makefile,v 1.43 2013/05/31 14:34:26 naddy Exp $

COMMENT=	free lossless audio codec

DISTNAME=	flac-1.3.0
CATEGORIES=	audio archivers
HOMEPAGE=	https://www.xiph.org/flac/
SHARED_LIBS +=  FLAC                 10.0     # 11.0
SHARED_LIBS +=  FLAC++               9.0      # 9.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/flac/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c m ogg stdc++

MODULES=	converters/libiconv
LIB_DEPENDS=	audio/libogg

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-sse \
		--disable-thorough-tests \
		--disable-xmms-plugin
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	cd ${PREFIX}/share/doc && mv ${DISTNAME} flac
	${SUBST_CMD} ${PREFIX}/man/man1/flac.1

.include <bsd.port.mk>
