# $OpenBSD: Makefile,v 1.6 2008/09/13 07:24:46 brad Exp $

COMMENT=	Sega Genesis emulator

DISTNAME=	generator-0.35-cbiere-r4
PKGNAME=	generator-0.35r4
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	emulators
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ghostwhitecrab.de/generator/

# GPLv2 + custom licenses for CPU emulators
PERMIT_DISTFILES_CDROM=	can't sell
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	can't sell
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	c m pthread z

LIB_DEPENDS+=	bz2.>=10::archivers/bzip2 \
		SDL.>=6::devel/sdl \
		jpeg.>=62::graphics/jpeg

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-sdl --with-sdl-audio --without-gcc
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
CONFIGURE_ARGS+=--with-raze
.else
CONFIGURE_ARGS+=--with-cmz80
.endif

.include <bsd.port.mk>
