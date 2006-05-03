# $OpenBSD: Makefile,v 1.1.1.1 2006/05/03 00:01:44 jolan Exp $
# XXX hardcoded endian list

COMMENT=	"sega genesis emulator"
DISTNAME=	generator-0.35-cbiere-r2
PKGNAME=	generator-0.35r2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	emulators
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ghostwhitecrab.de/generator/

# GPL + custom licenses for CPU emulators
PERMIT_DISTFILES_CDROM=	"can't sell"
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	"can't sell"
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS+=	bz2.10::archivers/bzip2 \
		SDL.6::devel/sdl \
		jpeg.62::graphics/jpeg

WANTLIB=	ICE SM X11 Xext c m pthread usbhid z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-sdl --with-sdl-audio --without-gcc
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.if (!${MACHINE_ARCH} == "alpha" && !${MACHINE_ARCH} == "amd64" && \
	!${MACHINE_ARCH} == "arm" && !${MACHINE_ARCH} == "i386" && \
	!${MACHINE_ARCH} == "vax")
CFLAGS+=-DBYTES_HIGHFIRST
.endif

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
CONFIGURE_ARGS+=--with-raze
.else
CONFIGURE_ARGS+=--with-cmz80
.endif

.include <bsd.port.mk>
