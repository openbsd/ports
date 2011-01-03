# $OpenBSD: Makefile,v 1.33 2011/01/03 19:47:11 jasper Exp $

COMMENT=	graphical user interface library for C++

DISTNAME=	libuta-0.4.4
REVISION =	9
SHARED_LIBS=		uta 42.0
MODGNU_SHARED_LIBS=	uta ''

CATEGORIES=	devel

HOMEPAGE=	http://libuta.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL X11 Xau Xdmcp Xext m mikmod ogg pthread stdc++ usbhid \
		Xrandr Xrender sndio vorbis vorbisfile z \
		pthread-stubs xcb smpeg>=1.3 SDL_mixer png>=2 \
		sigc ttf>=1.3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libuta/}

MODULES=	converters/libiconv

LIB_DEPENDS=	devel/smpeg \
		devel/sdl-mixer \
		graphics/png \
		devel/libsigc++ \
		print/freetype

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/freetype1 -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

VMEM_WARNING=	Yes

.include <bsd.port.mk>
