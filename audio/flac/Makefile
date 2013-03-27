# $OpenBSD: Makefile,v 1.42 2013/03/27 16:37:09 naddy Exp $

COMMENT=	free lossless audio codec

DISTNAME=	flac-1.2.1
REVISION=	3
CATEGORIES=	audio archivers
HOMEPAGE=	https://www.xiph.org/flac/
SHARED_LIBS +=  FLAC                 9.0      # .10.0
SHARED_LIBS +=  FLAC++               8.0      # .8.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD, GPL, GFDL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/flac/

WANTLIB=	c m ogg stdc++

MODULES=	converters/libiconv
LIB_DEPENDS=	audio/libogg

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-sse \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}" \
		--disable-thorough-tests \
		--disable-xmms-plugin
CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/include"
MAKE_ENV=	MAKEOBJDIR=/nonexistent		# ignore ${WRKSRC}/obj

post-install:
	cd ${PREFIX}/share/doc && mv ${DISTNAME} flac
	perl -i -pe 's:%%PREFIX%%:${TRUEPREFIX}:' ${PREFIX}/man/man1/flac.1

.include <bsd.port.mk>
