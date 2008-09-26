# $OpenBSD: Makefile,v 1.1.1.1 2008/09/26 12:01:43 jasper Exp $

COMMENT=		implementation of the Freedesktop sound theme spec.

DISTNAME=		libcanberra-0.9
SHARED_LIBS +=	canberra             0.0      # .1.2
CATEGORIES=		audio devel

HOMEPAGE=		http://0pointer.de/lennart/projects/libcanberra/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m ogg \
			pcre xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=		vorbis,vorbisfile::audio/libvorbis \
			ltdl::devel/libtool,-ltdl \
			gstreamer-0.10::multimedia/gstreamer-0.10/core

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk # Needs GTK+2 > 2.13.4
CONFIGURE_ENV+=         LDFLAGS="-L${LOCALBASE}/lib" \
                        CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
