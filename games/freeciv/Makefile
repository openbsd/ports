# $OpenBSD: Makefile,v 1.33 2003/03/31 13:07:46 sturm Exp $

COMMENT=	"Civilization clone for X11; multiplayer"

DISTNAME=	freeciv-1.13.0
CATEGORIES=	games
HOMEPAGE=	http://www.freeciv.org/

MAINTAINER=	Aleksander Piotrowski <aleksander.piotrowski@piestrak.waw.pl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable/
EXTRACT_SUFX=	.tar.bz2

FLAVORS=	gtk esd sdl
FLAVOR?=

MODULES=	gettext

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=	Imlib.19,gdk_imlib::graphics/imlib
.else
CONFIGURE_ARGS=	--with-xaw
.endif

.if ${FLAVOR:L:Msdl}
LIB_DEPENDS+=	SDL_mixer::devel/sdl-mixer
CONFIGURE_ARGS+=	--with-sdl-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+=	--disable-sdl-mixer
.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.2::audio/esound
CONFIGURE_ARGS+=	--with-esd-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+=	--disable-esd
.endif

USE_X11=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
