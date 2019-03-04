# $OpenBSD: Makefile,v 1.11 2019/03/04 12:51:12 chrisz Exp $

COMMENT =		an extensible platform for analysis of C software

DISTNAME =		frama-c-18.0-Argon
PKGNAME =		frama-c-18.0
CATEGORIES =		devel
HOMEPAGE =		http://www.frama-c.com/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnomecanvas-2
WANTLIB += gobject-2.0 gtk-x11-2.0 gtksourceview-2.0 intl m gmp
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES =		https://frama-c.com/download/

MODULES =		lang/ocaml

BUILD_DEPENDS =		x11/lablgtk2 devel/ocaml-graph \
			math/graphviz math/ocaml-zarith sysutils/findlib
RUN_DEPENDS =		x11/lablgtk2 math/graphviz math/ocaml-zarith

LIB_DEPENDS =		x11/gnome/libgnomecanvas \
			x11/gtksourceview

USE_GMAKE =		Yes
TEST_TARGET =		oracles tests

CONFIGURE_STYLE =	gnu autoconf no-autoheader
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	MAKE=${MAKE_PROGRAM} \
			--docdir=${PREFIX}/share/doc/frama-c/

DPB_PROPERTIES +=	parallel

.include <bsd.port.mk>
