# $OpenBSD: Makefile,v 1.3 2019/08/17 20:24:35 chrisz Exp $

COMMENT =	binding to cairo, a 2D vector graphics library
CATEGORIES =	graphics

GH_ACCOUNT =	Chris00
GH_PROJECT =	ocaml-cairo
GH_TAGNAME =	0.6.1

# LGPL 3.0
PERMIT_PACKAGE = Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl pango-1.0 pangocairo-1.0 pangoft2-1.0 c m z

MODULES =	lang/ocaml

# findlib provides the ocaml-graphics META file
BUILD_DEPENDS = devel/dune \
		sysutils/findlib \
		lang/ocaml,-graphics \
		x11/lablgtk2 \
		devel/ocaml-configurator

LIB_DEPENDS =	devel/pango \
		graphics/gdk-pixbuf2 \
		x11/gtk+2

ALL_TARGET =

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
