# $OpenBSD: Makefile,v 1.3 2009/08/10 06:31:43 kili Exp $

COMMENT=	3d realtime strategy on a future earth

DISTNAME=	warzone2100-2.0.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://wz2100.net/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	GL GLU SDL X11 Xext c m ogg ossaudio pthread pthread-stubs \
		usbhid xcb z

MASTER_SITES=	http://download.gna.org/warzone/releases/2.0/

LIB_DEPENDS=	SDL_net.>=1::devel/sdl-net \
		physfs.>=1::devel/physfs \
		openal.>=1::audio/openal \
		vorbis.>=5,vorbisfile.>=4::audio/libvorbis \
		mad.>=2::audio/libmad \
		jpeg.>=62::graphics/jpeg \
		png.>=5::graphics/png

BUILD_DEPENDS=	::devel/bison \
		::archivers/unzip \
		::archivers/zip
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS='-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng \
		    -I${X11BASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib' \
		LIBS='-pthread -lossaudio' \
		YACC='bison -y'

.include <bsd.port.mk>
