# $OpenBSD: Makefile,v 1.54 2019/07/12 21:02:13 sthen Exp $

COMMENT-main=	implementation of the Freedesktop sound theme spec.
COMMENT-gtk=	gtk+2 helper for libcanberra
COMMENT-gtk3=	gtk+3 helper for libcanberra

V=		0.30
DISTNAME=	libcanberra-${V}
EXTRACT_SUFX=	.tar.xz

PKGNAME-main=	${DISTNAME}
PKGNAME-gtk=	libcanberra-gtk-${V}
PKGNAME-gtk3=	libcanberra-gtk3-${V}

REVISION-main=	4
REVISION-gtk=	8
REVISION-gtk3=	8

SHARED_LIBS +=  canberra             2.0      # 2.5
SHARED_LIBS +=  canberra-gtk3        1.8      # 1.8
SHARED_LIBS +=  canberra-gtk         1.0      # 1.8

CATEGORIES=	audio devel

HOMEPAGE=	http://0pointer.de/lennart/projects/libcanberra/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

cWANTLIB += ltdl m ogg pthread vorbis vorbisfile

WANTLIB-main += ${cWANTLIB} sndio

WANTLIB-gtk += ${cWANTLIB}
WANTLIB-gtk += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB-gtk += Xi Xinerama Xrandr Xrender atk-1.0 cairo canberra
WANTLIB-gtk += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-gtk += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB-gtk += gtk-x11-2.0 harfbuzz iconv intl pango-1.0 pangocairo-1.0
WANTLIB-gtk += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm z
WANTLIB-gtk += ${COMPILER_LIBCXX} fribidi

WANTLIB-gtk3 += ${cWANTLIB}
WANTLIB-gtk3 += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB-gtk3 += Xrender Xtst atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject 
WANTLIB-gtk3 += canberra dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB-gtk3 += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-gtk3 += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl pango-1.0
WANTLIB-gtk3 += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xcb xcb-render
WANTLIB-gtk3 += xcb-shm z ${COMPILER_LIBCXX} fribidi

COMPILER =		base-clang ports-gcc base-gcc

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
			x11/gtk+2
RUN_DEPENDS-gtk=

LIB_DEPENDS-gtk3=	${BASE_PKGPATH} \
			x11/gtk+3
RUN_DEPENDS-gtk3=

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= 	--disable-gstreamer \
			--disable-null \
			--disable-oss \
			--disable-pulse \
			--disable-tdb \
			--enable-sndio

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
