# $OpenBSD: Makefile,v 1.9 2010/11/22 10:16:08 espie Exp $

COMMENT=	3d realtime strategy on a future earth

DISTNAME=	warzone2100-2.0.7
REVISION =	2
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://wz2100.net/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	GL GLU SDL X11 Xext c m ogg pthread pthread-stubs \
		sndio usbhid xcb z SDL_net>=1 physfs>=1 openal>=1 \
		vorbis>=5 vorbisfile>=4 mad>=2 jpeg>=62 png>=5

MASTER_SITES=	http://download.gna.org/warzone/releases/2.0/

LIB_DEPENDS=	devel/sdl-net \
		devel/physfs \
		audio/openal \
		audio/libvorbis \
		audio/libmad \
		graphics/jpeg \
		graphics/png

BUILD_DEPENDS=	devel/bison \
		archivers/unzip \
		archivers/zip
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS='-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng \
		    -I${X11BASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib' \
		LIBS='-pthread' \
		YACC='bison -y'

.include <bsd.port.mk>
