# $OpenBSD: Makefile,v 1.1.1.1 2004/10/07 03:05:32 jsg Exp $

COMMENT=	"x86 with DOS emulator targeted at playing old games"
VERSION=	0.62
DISTNAME=	dosbox-${VERSION}
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dosbox/}

HOMEPAGE=	http://dosbox.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL_net::devel/sdl-net \
		SDL_sound::devel/sdl-sound \
		png.2::graphics/png

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" 
CONFIGURE_ENV+=LDFLAGS="-L${LOCALBASE}/lib"
# The dynamic CPU core does nasty things
CONFIGURE_ARGS=		--disable-dynamic-x86 
CONFIGURE_ARGS+=	--disable-alsatest
CONFIGURE_ARGS+=	--disable-opengl

.include <bsd.port.mk>
