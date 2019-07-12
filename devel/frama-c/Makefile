# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:08 sthen Exp $

BROKEN-i386 =	ld: error: undefined symbol: ml_as_z_pred, etc

FIX_EXTRACT_PERMISSIONS =	Yes

COMMENT =		an extensible platform for analysis of C software

DISTNAME =		frama-c-18.0-Argon
PKGNAME =		frama-c-18.0
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		https://frama-c.com/

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnomecanvas-2
WANTLIB += gobject-2.0 gtk-x11-2.0 gtksourceview-2.0 intl m gmp
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES =		https://frama-c.com/download/

MODULES =		lang/ocaml

BUILD_DEPENDS =		x11/lablgtk2 \
			devel/ocaml-graph \
			math/graphviz \
			math/ocaml-zarith \
			sysutils/findlib
RUN_DEPENDS =		x11/lablgtk2 \
			math/graphviz \
			math/ocaml-zarith \
			sysutils/findlib

LIB_DEPENDS =		x11/gnome/libgnomecanvas \
			x11/gtksourceview

USE_GMAKE =		Yes
TEST_TARGET =		oracles tests

CONFIGURE_STYLE =	gnu autoconf no-autoheader
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	MAKE=${MAKE_PROGRAM} \
			--docdir=${PREFIX}/share/doc/frama-c/

.include <bsd.port.mk>
