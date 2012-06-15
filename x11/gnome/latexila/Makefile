# $OpenBSD: Makefile,v 1.3 2012/06/15 08:30:20 ajacoutot Exp $

COMMENT=	integrated LaTeX environment for GNOME

GNOME_PROJECT=	latexila
GNOME_VERSION=	2.4.1
REVISION=	0

CATEGORIES=	editors print

HOMEPAGE=	http://projects.gnome.org/latexila/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gee gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 gtkspell m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += unique-1.0 xcb xcb-render xcb-shm z

MODULES=	devel/cmake \
		devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		textproc/latexmk \
		devel/xdg-utils # xdg-open(1)

LIB_DEPENDS=	devel/libgee06 \
		devel/libunique \
		textproc/gtkspell \
		x11/gtksourceview

MODGNOME_TOOLS= 	yelp
MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE=cmake
CONFIGURE_ARGS=	-DCMAKE_C_FLAGS="${CFLAGS} -pthread \
			-L${X11BASE}/lib \
			-L${LOCALBASE}/lib" \
		-DWITH_GNOME=ON \
		-DCOMPILE_SCHEMA=OFF

.include <bsd.port.mk>
