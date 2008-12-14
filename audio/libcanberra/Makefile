# $OpenBSD: Makefile,v 1.4 2008/12/14 15:10:15 ajacoutot Exp $

COMMENT=		implementation of the Freedesktop sound theme spec.

DISTNAME=		libcanberra-0.10
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=  canberra             0.1      # .1.3
SHARED_LIBS +=  canberra-gtk         0.0      # .0.4
CATEGORIES=		audio devel

HOMEPAGE=		http://0pointer.de/lennart/projects/libcanberra/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/gconf2
LIB_DEPENDS=		vorbis,vorbisfile::audio/libvorbis \
			ltdl::devel/libtool,-ltdl \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			gdk_pixbuf-2.0.>=1400.0,gdk-x11-2.0.>=1400.0,gtk-x11-2.0.>=1400.0::x11/gtk+2

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libcanberra \
			--disable-schemas-install \
			--localstatedir="/var" \
			--enable-gstreamer \
			--enable-oss \
			--disable-alsa \
			--disable-pulse \
			--disable-tdb
CONFIGURE_ENV+=         LDFLAGS="-L${LOCALBASE}/lib" \
                        CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
