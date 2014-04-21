# $OpenBSD: Makefile,v 1.29 2014/04/21 21:45:35 jca Exp $

COMMENT =	OCaml interface to GTK+2

V =		2.18.0
DISTNAME =	lablgtk-$V
PKGNAME =	lablgtk2-$V
REVISION =	2
CATEGORIES =	x11 devel

HOMEPAGE =	http://lablgtk.forge.ocamlcore.org/
MASTER_SITES =	https://forge.ocamlcore.org/frs/download.php/1261/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 cairo fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 gnomecanvas-2 gobject-2.0 gtk-x11-2.0 \
		gtksourceview-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 rsvg-2 xml2 z

BUILD_DEPENDS =	sysutils/findlib

LIB_DEPENDS =	x11/gtk+2 \
		devel/libglade2 \
		x11/gtksourceview \
		x11/gnome/libgnomecanvas \
		x11/gnome/librsvg

FAKE_FLAGS =	BINDIR=${WRKINST}${PREFIX}/bin \
		INSTALLDIR=${WRKINST}${PREFIX}/lib/ocaml/lablgtk2 \
		DLLDIR=${WRKINST}${PREFIX}/lib/ocaml/stublibs

USE_GMAKE =	Yes
MODULES =	lang/ocaml \
		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	USE_CC=1 ${MODOCAML_NATIVE:S/Yes/USE_DOTOPT=1/:S/No//} \
		--without-gl --without-panel \
		--without-gnomeui --without-gtksourceview \
		--without-gtkspell --without-quartz

ALL_TARGET =	all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//}

NO_TEST =	Yes

post-install:
		chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/ocaml/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib/lablgtk2
		${INSTALL_DATA} ${WRKSRC}/META ${PREFIX}/lib/ocaml/site-lib/lablgtk2
		rm -f ${PREFIX}/lib/ocaml/stublibs/*.so.owner

.include <bsd.port.mk>
