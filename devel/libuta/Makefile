# $OpenBSD: Makefile,v 1.28 2009/08/10 06:31:08 kili Exp $

COMMENT=	graphical user interface library for C++

DISTNAME=	libuta-0.4.4
PKGNAME=	${DISTNAME}p8
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
		Xrandr Xrender iconv sndio vorbis vorbisfile z \
		pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libuta/}

LIB_DEPENDS=	smpeg.>=1.3::devel/smpeg \
		SDL_mixer::devel/sdl-mixer \
		png.>=2::graphics/png \
		sigc:libsigc++->=1,<2:devel/libsigc++ \
		ttf.>=1.3::print/freetype

USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/freetype1 -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

VMEM_WARNING=	Yes

.include <bsd.port.mk>
