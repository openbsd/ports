# $OpenBSD: Makefile,v 1.25 2002/09/07 04:56:28 pvalchev Exp $
# Uses pthreads

COMMENT=	"cross-platform multimedia library"

VERSION=	1.2.4
DISTNAME=	SDL-${VERSION}
PKGNAME=	${DISTNAME:L}p2
CATEGORIES=	devel

HOMEPAGE=	http://www.libsdl.org

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/release/ \
		http://www.devolution.com/~slouken/SDL/release/

FLAVORS=	sun esd arts no_x11
FLAVOR?=	sun

USE_GMAKE=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/test
CONFIGURE_ENV+=	X11BASE="${X11BASE}"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-oss \
		 --enable-pthread-sem

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	nasm::devel/nasm
CONFIGURE_ARGS+= --enable-nasm
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

.if ${FLAVOR:L:Msun}
CONFIGURE_ARGS+= --enable-openbsdaudio
.else
CONFIGURE_ARGS+= --disable-openbsdaudio
.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.2::audio/esound
CONFIGURE_ARGS+= --enable-esd
.else
CONFIGURE_ARGS+= --disable-esd
.endif

.if ${FLAVOR:L:Marts}
LIB_DEPENDS+=	artsc::x11/kde/arts3
CONFIGURE_ARGS+= --enable-arts
.else
CONFIGURE_ARGS+= --disable-arts
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x \
		 --disable-video-x11
.else
USE_X11=	Yes
.endif

NO_REGRESS=	Yes

MAKE_FLAGS=	libSDL_la_LDFLAGS="-version-info 1:0:0"

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure
	@find ${WRKSRC} -name Makefile.in -exec touch {} \;

.include <bsd.port.mk>
