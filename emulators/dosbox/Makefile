# $OpenBSD: Makefile,v 1.5 2006/03/31 13:56:51 jsg Exp $

COMMENT=	"x86 with DOS emulator targeted at playing games"
DISTNAME=	dosbox-0.65
PKGNAME=	${DISTNAME}
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dosbox/}

HOMEPAGE=	http://dosbox.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread stdc++ usbhid z

LIB_DEPENDS=	SDL_net::devel/sdl-net \
		SDL_sound::devel/sdl-sound \
		png.2::graphics/png

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" 
CONFIGURE_ENV+=LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--disable-alsatest
CONFIGURE_ARGS+=	--disable-opengl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dosbox

.include <bsd.port.mk>
