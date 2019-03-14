# $OpenBSD: Makefile,v 1.65 2019/03/14 13:48:23 bcallah Exp $

V=		1.5.2
COMMENT=	small and fast window manager
DISTNAME=	icewm-${V}
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	x11

HOMEPAGE=	https://www.ice-wm.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# LGPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC ICE SM X11 Xext Xft Xinerama
WANTLIB += Xrandr Xrender ao c expat ffi fontconfig freetype fribidi
WANTLIB += gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl m ogg pcre sndfile
WANTLIB += vorbis vorbisenc xcb z

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/ice-wm/icewm/releases/download/${V}/

BUILD_DEPENDS=	devel/gettext-tools \
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

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mapm}
PATCH_LIST=	patch-* apm-*
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/icewm.adoc

.include <bsd.port.mk>
