# $OpenBSD: Makefile,v 1.19 2017/11/21 00:13:01 naddy Exp $

COMMENT=	GTK+ support library for colord

DISTNAME=	colord-gtk-0.1.26
EXTRACT_SUFX=	.tar.xz
REVISION=	4

SHARED_LIBS +=  colord-gtk           0.0      # 1.0

CATEGORIES=	graphics print

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject colord colordprivate dbus-1 epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES=	http://www.freedesktop.org/software/colord/releases/

MODULES=	textproc/intltool

BUILD_DEPENDS=	devel/gobject-introspection \
		lang/vala \
		textproc/docbook2x

LIB_DEPENDS=	graphics/colord \
		x11/gtk+3

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--enable-introspection \
		--enable-vala

pre-configure:
	sed -i -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
