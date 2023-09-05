COMMENT-main=	implementation of the Freedesktop sound theme spec.
COMMENT-gtk3=	gtk+3 helper for libcanberra

V=		0.30
DISTNAME=	libcanberra-${V}
EXTRACT_SUFX=	.tar.xz

REVISION-main=	6
REVISION-gtk3=	12

SHARED_LIBS +=  canberra             2.0      # 2.5
SHARED_LIBS +=  canberra-gtk3        1.8      # 1.8

CATEGORIES=	audio devel

HOMEPAGE=	http://0pointer.de/lennart/projects/libcanberra/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}

# C++
COMPILER=	base-clang ports-gcc

WANTLIB += ltdl m ogg pthread vorbis vorbisfile

WANTLIB-main += ${WANTLIB} sndio

WANTLIB-gtk3 += ${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-gtk3 += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-gtk3 += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-gtk3 += c cairo cairo-gobject canberra dbus-1 epoxy execinfo
WANTLIB-gtk3 += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB-gtk3 += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-gtk3 += gthread-2.0 gtk-3 harfbuzz iconv intl jpeg pango-1.0
WANTLIB-gtk3 += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png xcb
WANTLIB-gtk3 += xcb-render xcb-shm z

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES=		-main -gtk3

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION= 	1.11

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS-main=	audio/libvorbis \
			devel/libtool,-ltdl
RUN_DEPENDS-main=	audio/sound-theme-freedesktop

LIB_DEPENDS-gtk3=	${BASE_PKGPATH} \
			x11/gtk+3
RUN_DEPENDS-gtk3=

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= 	--disable-gstreamer \
			--disable-gtk \
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
	rm ${PREFIX}/lib/gtk-3.0/modules/*.{a,la}

.include <bsd.port.mk>
