# $OpenBSD: Makefile,v 1.9 2006/08/03 23:55:10 espie Exp $
# $FreeBSD: ports/multimedia/libquicktime/Makefile,v 1.19 2004/03/16 04:23:53 edwin Exp $

SHARED_ONLY=		Yes

COMMENT=		library for reading and writing quicktime files
DISTNAME=		libquicktime-0.9.7
PKGNAME=		${DISTNAME}p1
CATEGORIES=		multimedia
SHARED_LIBS=		quicktime	2.0

HOMEPAGE=		http://libquicktime.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL GLU ICE SM X11 Xaw Xext Xrender Xt Xv \
			atk-1.0.>=1011.3 c fontconfig freetype \
			glib-2.0.>=800.3 gmodule-2.0.>=800.3 \
			gobject-2.0.>=800.3 m ogg ossaudio \
			pango-1.0.>=1001.1 pangocairo-1.0.>=1001.1 \
			cairo glitz pangoft2-1.0.>=1001.1 pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libquicktime/}

MODULES=		devel/gettext

LIB_DEPENDS=		vorbis.>=3,vorbisfile.>=4,vorbisenc.>=2::audio/libvorbis \
			jpeg.>=9::graphics/jpeg \
			png.>=4::graphics/png \
			dv.>=4::multimedia/libdv \
			mp3lame::audio/lame \
			avcodec.>=7,avutil.>=1::graphics/ffmpeg \
			gtk-x11-2.0.>=800.8,gdk-x11-2.0.>=800.8,gdk_pixbuf-2.0.>=800.8::x11/gtk+2

VMEM_WARNING=		Yes
AUTOCONF_VERSION=	2.59
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			AVCODEC_LIBS="-lavcodec -lavutil -lz -lm -pthread"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-firewire \
			--with-avcodec="${LOCALBASE}" \
			--with-vorbis-libraries="${LOCALBASE}/lib -logg"

.include <bsd.port.mk>
