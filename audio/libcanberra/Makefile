# $OpenBSD: Makefile,v 1.8 2009/06/08 16:58:15 ajacoutot Exp $

COMMENT=		implementation of the Freedesktop sound theme spec.

DISTNAME=		libcanberra-0.11
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=  canberra             1.0      # .1.4
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
		pcre pixman-1 png pthread sndio xml2 z

MODULES=		devel/gettext \
			devel/gconf2

MODGCONF2_SCHEMAS_DIR=	libcanberra
MODGCONF2_LIBDEP=	No

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9
BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=		::devel/gconf2
LIB_DEPENDS=		vorbis,vorbisfile::audio/libvorbis \
			ltdl::devel/libtool,-ltdl \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			gdk_pixbuf-2.0.>=1400.0,gdk-x11-2.0.>=1400.0,gtk-x11-2.0.>=1400.0::x11/gtk+2

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir="/var" \
			--enable-sndio \
			--enable-gstreamer \
			--disable-oss \
			--disable-alsa \
			--disable-pulse \
			--disable-tdb \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--disable-ltdl-install \
			--without-included-ltdl
CONFIGURE_ENV+=         LDFLAGS="-L${LOCALBASE}/lib" \
                        CPPFLAGS="-I${LOCALBASE}/include"

pre-configure:
	cp ${FILESDIR}/sndio.c ${WRKSRC}/src
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I m4
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

.include <bsd.port.mk>
