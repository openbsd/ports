# $OpenBSD: Makefile,v 1.18 2010/10/23 22:01:29 sthen Exp $

COMMENT=	x86 with DOS emulator targeted at playing games
DISTNAME=	dosbox-0.74
REVISION=	0
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dosbox/}

HOMEPAGE=	http://dosbox.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		SDL SDL_net SDL_sound png X11 c m pthread z

LIB_DEPENDS=	::devel/sdl-net \
		::devel/sdl-sound \
		::graphics/png

USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

MODULES+=       gcc4
MODGCC4_ARCHES= *
MODGCC4_LANGS=  c c++

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" 
CONFIGURE_ENV+=LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--disable-alsatest
CONFIGURE_ARGS+=	--disable-opengl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dosbox

.include <bsd.port.mk>
