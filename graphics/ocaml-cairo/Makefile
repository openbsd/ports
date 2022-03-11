COMMENT =	binding to cairo, a 2D vector graphics library
CATEGORIES =	graphics

V =		0.6.2
DISTNAME =	cairo2-$V
PKGNAME =	ocaml-cairo-$V
REVISION =	3

# LGPL 3.0
PERMIT_PACKAGE = Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

MASTER_SITES =	https://github.com/Chris00/ocaml-cairo/releases/download/${V}/
EXTRACT_SUFX =	.tbz

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune \
		devel/dune,-configurator \
		sysutils/findlib \
		graphics/ocaml-graphics \
		x11/lablgtk2

LIB_DEPENDS =	devel/pango \
		graphics/gdk-pixbuf2 \
		x11/gtk+2

ALL_TARGET =

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-cairo
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-cairo/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
