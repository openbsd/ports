# $OpenBSD: Makefile,v 1.23 2011/05/01 18:00:37 ajacoutot Exp $

COMMENT-main=	implementation of the Freedesktop sound theme spec.
COMMENT-gtk=	gtk+2 helper for libcanberra
COMMENT-gtk3=	gtk+3 helper for libcanberra

V=		0.28
DISTNAME=	libcanberra-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-gtk=	libcanberra-gtk-${V}
PKGNAME-gtk3=	libcanberra-gtk3-${V}

REVISION-main=	0
REVISION-gtk=	0

SHARED_LIBS +=  canberra             2.0      # 2.5
SHARED_LIBS +=  canberra-gtk3        1.8      # 1.8
SHARED_LIBS +=  canberra-gtk         1.0      # 1.8

CATEGORIES=	audio devel

HOMEPAGE=	http://0pointer.de/lennart/projects/libcanberra/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 ltdl m ogg
WANTLIB += pcre vorbis vorbisfile z

WANTLIB-main += ${WANTLIB} gstreamer-0.10 sndio xml2

WANTLIB-gtk += ${WANTLIB}
WANTLIB-gtk += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-gtk += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo canberra
WANTLIB-gtk += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-gtk += gio-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gtk += pixman-1 png pthread-stubs xcb xcb-render xcb-shm

WANTLIB-gtk3 += ${WANTLIB}
WANTLIB-gtk3 += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-gtk3 += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB-gtk3 += cairo-gobject canberra drm expat fontconfig freetype
WANTLIB-gtk3 += gdk-3 gdk_pixbuf-2.0 gio-2.0 gtk-3 pango-1.0 pangocairo-1.0
WANTLIB-gtk3 += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB-gtk3 += xcb-render xcb-shm

MODULES=		devel/gettext \
			devel/gconf2

MULTI_PACKAGES=		-main -gtk -gtk3

MODGCONF2_SCHEMAS_DIR=	libcanberra
MODGCONF2_LIBDEP=	No

SUBST_VARS=		V

# Should be 2.68
AUTOCONF_VERSION=	2.67
AUTOMAKE_VERSION= 	1.10

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			audio/libvorbis \
			devel/libtool,-ltdl \
			multimedia/gstreamer-0.10/core
RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			audio/sound-theme-freedesktop>=0.6

LIB_DEPENDS-gtk=	${BASE_PKGPATH} \
			x11/gtk+2
RUN_DEPENDS-gtk=	${MODGCONF2_RUN_DEPENDS}

LIB_DEPENDS-gtk3=	${BASE_PKGPATH} \
			x11/gtk+3
RUN_DEPENDS-gtk3=	# empty

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	 gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--localstatedir="/var" \
			--enable-sndio \
			--enable-gstreamer \
			--disable-oss \
			--disable-alsa \
			--disable-pulse \
			--disable-tdb \
			--disable-udev \
			--enable-gtk-doc=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	cp ${FILESDIR}/sndio.c ${WRKSRC}/src
	${SUBST_CMD} ${WRKSRC}/src/sound-theme-spec.c \
		${WRKSRC}/src/test-canberra.c
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I m4
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

.include <bsd.port.mk>
