# $OpenBSD: Makefile,v 1.74 2020/06/24 20:52:49 bket Exp $

# unconditionally uses machine/apmvar.h and related structures/defines
ONLY_FOR_ARCHS=	${APM_ARCHS}

V=		1.6.6
COMMENT=	small and fast window manager
DISTNAME=	icewm-${V}
EXTRACT_SUFX=	.tar.lz
CATEGORIES=	x11

HOMEPAGE=	https://ice-wm.org/

# LGPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC ICE SM X11 Xcomposite Xdamage
WANTLIB += Xext Xfixes Xft Xinerama Xpm Xrandr Xrender ao c expat
WANTLIB += ffi fontconfig freetype fribidi gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv intl
WANTLIB += m ogg pcre sndfile vorbis vorbisenc xcb z

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/ice-wm/icewm/releases/download/${V}/

BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/asciidoc

LIB_DEPENDS=	audio/libao \
		audio/libsndfile \
		devel/fribidi \
		graphics/gdk-pixbuf2

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
		LDFLAGS="-L${LOCALBASE}/lib"

# make: don't know how to make %.html: (prerequisite of: icewm.html)
USE_GMAKE=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/icewm.adoc

.include <bsd.port.mk>
