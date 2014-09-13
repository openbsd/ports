# $OpenBSD: Makefile,v 1.10 2014/09/13 16:36:53 ajacoutot Exp $

COMMENT=	GTK+ support library for colord

DISTNAME=	colord-gtk-0.1.25
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS +=  colord-gtk           0.0      # 1.0

CATEGORIES=	graphics print

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject colord colordprivate dbus-1 expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm graphite2 z

MASTER_SITES=	http://www.freedesktop.org/software/colord/releases/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	lang/vala \
		devel/gobject-introspection

LIB_DEPENDS=	graphics/colord>=0.1.22 \
		x11/gtk+3

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--enable-vala

pre-configure:
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
