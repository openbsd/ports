# $OpenBSD: Makefile,v 1.4 2006/01/08 23:48:36 jakemsr Exp $
# $FreeBSD: ports/multimedia/libquicktime/Makefile,v 1.19 2004/03/16 04:23:53 edwin Exp $

SHARED_ONLY=		Yes

COMMENT=		library for reading and writing quicktime files
DISTNAME=		libquicktime-0.9.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		multimedia
SHARED_LIBS=		quicktime	1.0

HOMEPAGE=		http://libquicktime.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL GLU ICE SM X11 Xaw Xext Xi Xt Xv a52 c gdk \
			glib gmodule gtk iconv intl m mp3lame ogg \
			ossaudio pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libquicktime/}

LIB_DEPENDS=		vorbis.3,vorbisfile.4,vorbisenc.2::audio/libvorbis \
			jpeg.9::graphics/jpeg \
			png.4::graphics/png \
			dv.4::multimedia/libdv \
			avcodec.4::graphics/ffmpeg

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
VMEM_WARNING=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-firewire

.include <bsd.port.mk>
