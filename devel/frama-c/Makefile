# $OpenBSD: Makefile,v 1.25 2020/06/09 17:34:13 chrisz Exp $

BROKEN-i386 =	ld: error: undefined symbol: ml_as_z_mul, etc

FIX_EXTRACT_PERMISSIONS =	Yes

COMMENT =		extensible platform for analysis of C software

CATEGORIES =		devel
GH_ACCOUNT =		Frama-C
GH_PROJECT =		Frama-C-snapshot
GH_TAGNAME =		19.0
REVISION =		3
DISTNAME =		frama-c-${GH_TAGNAME}-Potassium
PKGNAME =		frama-c-${GH_TAGNAME}

HOMEPAGE =		https://frama-c.com/

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmp gobject-2.0 gtk-3
WANTLIB += gtksourceview-3.0 intl m pango-1.0 pangocairo-1.0 pthread
WANTLIB += z

MODULES =		lang/ocaml

RUN_DEPENDS =		x11/lablgtk3 \
			devel/ocaml-graph \
			math/graphviz \
			math/ocaml-zarith \
			devel/ocaml-yojson \
			sysutils/findlib

BUILD_DEPENDS =		${RUN_DEPENDS}

USE_GMAKE =		Yes
TEST_TARGET =		oracles tests

CONFIGURE_STYLE =	gnu autoconf no-autoheader
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	MAKE=${MAKE_PROGRAM} \
			--docdir=${PREFIX}/share/doc/frama-c/

.include <bsd.port.mk>
