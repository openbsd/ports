# $OpenBSD: Makefile,v 1.83 2022/01/07 21:54:16 op Exp $

# unconditionally uses machine/apmvar.h and related structures/defines
ONLY_FOR_ARCHS=	${APM_ARCHS}

V=		2.9.3
COMMENT=	small and fast window manager
DISTNAME=	icewm-${V}
EXTRACT_SUFX=	.tar.lz
CATEGORIES=	x11

HOMEPAGE=	https://ice-wm.org/

# LGPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC ICE Imlib2 SM X11 Xau Xcomposite
WANTLIB += Xdamage Xdmcp Xext Xfixes Xft Xinerama Xpm Xrandr Xrender
WANTLIB += ao c cairo cairo-gobject expat ffi fontconfig freetype
WANTLIB += fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 harfbuzz iconv intl jpeg lzma m ogg opus
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png rsvg-2 sndfile vorbis vorbisenc xcb xcb-render
WANTLIB += xcb-shm xml2 z

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/ice-wm/icewm/releases/download/${V}/

BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/asciidoc

LIB_DEPENDS=	audio/libao \
		audio/libsndfile \
		devel/fribidi \
		devel/glib2 \
		devel/harfbuzz \
		devel/pango \
		devel/pcre \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		graphics/imlib2 \
		textproc/libxml,-main \
		x11/gnome/librsvg

RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-libdir=${PREFIX}/share/icewm \
		--with-cfgdir=${SYSCONFDIR}/icewm \
		--with-x \
		--enable-corefonts \
		--enable-i18n

# XXX TODO
#CONFIGURE_ARGS+=--with-icesound=sndio

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl"

TEST_ENV=	FAKED_MODE=True

# make: don't know how to make %.html: (prerequisite of: icewm.html)
USE_GMAKE=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/icewm.adoc

.include <bsd.port.mk>
