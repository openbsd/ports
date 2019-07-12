# $OpenBSD: Makefile,v 1.34 2019/07/12 20:43:33 sthen Exp $

COMMENT=		small and easy to use graphical MPD client

DISTNAME=		gimmix-0.5.7.2
CATEGORIES=		audio x11
REVISION=		8

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo crypto curl expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl lzma m mpd nghttp2 nxml pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += ssl ${COMPILER_LIBCXX} tag tag_c xcb xcb-render xcb-shm
WANTLIB += xml2 z fribidi

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gimmix.berlios/}
EXTRACT_SUFX=		.tar.bz2

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		textproc/intltool

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=		audio/libmpd \
			audio/taglib \
			devel/libglade2 \
			textproc/libnxml

RUN_DEPENDS=		devel/desktop-file-utils

post-extract:
	ln -s ${LOCALBASE}/share/intltool/Makefile.in.in ${WRKSRC}/po

.include <bsd.port.mk>
