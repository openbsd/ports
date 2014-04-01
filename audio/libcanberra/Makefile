# $OpenBSD: Makefile,v 1.41 2014/04/01 14:52:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	implementation of the Freedesktop sound theme spec.
COMMENT-gtk=	gtk+2 helper for libcanberra
COMMENT-gtk3=	gtk+3 helper for libcanberra

V=		0.30
DISTNAME=	libcanberra-${V}
EXTRACT_SUFX=	.tar.xz

PKGNAME-main=	${DISTNAME}
PKGNAME-gtk=	libcanberra-gtk-${V}
PKGNAME-gtk3=	libcanberra-gtk3-${V}

REVISION-main=	1
REVISION-gtk=	1
REVISION-gtk3=	1

SHARED_LIBS +=  canberra             2.0      # 2.5
SHARED_LIBS +=  canberra-gtk3        1.8      # 1.8
SHARED_LIBS +=  canberra-gtk         1.0      # 1.8

CATEGORIES=	audio devel

HOMEPAGE=	http://0pointer.de/lennart/projects/libcanberra/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${HOMEPAGE}

cWANTLIB += ltdl m ogg pthread vorbis vorbisfile

WANTLIB-main += ${cWANTLIB} sndio

WANTLIB-gtk += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-gtk += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-gtk += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo canberra
WANTLIB-gtk += drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-gtk += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-gtk += gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB-gtk += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z stdc++
WANTLIB-gtk += harfbuzz

WANTLIB-gtk3 += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-gtk3 += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-gtk3 += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB-gtk3 += cairo-gobject canberra drm expat ffi fontconfig freetype
WANTLIB-gtk3 += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-gtk3 += gthread-2.0 gtk-3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gtk3 += pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB-gtk3 += xcb-shm z stdc++
WANTLIB-gtk3 += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz

MODULES=		devel/gettext

MULTI_PACKAGES=		-main -gtk -gtk3

SUBST_VARS=		V

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION= 	1.11

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS-main=	audio/libvorbis \
			devel/libtool,-ltdl
RUN_DEPENDS-main=	audio/sound-theme-freedesktop>=0.6

LIB_DEPENDS-gtk=	${BASE_PKGPATH} \
			${MODGETTEXT_LIB_DEPENDS} \
			x11/gtk+2
RUN_DEPENDS-gtk=	${MODGETTEXT_RUN_DEPENDS}

LIB_DEPENDS-gtk3=	${BASE_PKGPATH} \
			${MODGETTEXT_LIB_DEPENDS} \
			x11/gtk+3
RUN_DEPENDS-gtk3=	${MODGETTEXT_RUN_DEPENDS}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-gtk-doc-html \
			--disable-gstreamer \
			--disable-null \
			--disable-oss \
			--disable-pulse \
			--disable-tdb \
			--enable-sndio

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

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

post-install:
	rm ${PREFIX}/lib/libcanberra-${V}/*.{a,la}
	rm ${PREFIX}/lib/gtk-{2,3}.0/modules/*.{a,la}

.include <bsd.port.mk>
