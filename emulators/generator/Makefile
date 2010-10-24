# $OpenBSD: Makefile,v 1.9 2010/10/24 21:17:48 ajacoutot Exp $

COMMENT=	Sega Genesis emulator

DISTNAME=	generator-0.35-cbiere-r4
PKGNAME=	generator-0.35r4
REVISION=	1
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	emulators
MASTER_SITES=	${HOMEPAGE}/cbiere/generator/

HOMEPAGE=	http://www.squish.net/generator/

# GPLv2 + custom licenses for CPU emulators
PERMIT_DISTFILES_CDROM=	can't sell
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	can't sell
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	c m pthread z bz2 SDL jpeg

LIB_DEPENDS+=	::archivers/bzip2 \
		::devel/sdl \
		::graphics/jpeg

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
