COMMENT =	multi-platform file synchronization tool

GH_ACCOUNT =	bcpierce00
GH_PROJECT =	unison
GH_TAGNAME =    v2.52.0

CATEGORIES =	net

HOMEPAGE =	https://www.cis.upenn.edu/~bcpierce/unison/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c m util

MODULES =		lang/ocaml
MODOCAML_RUNDEP =	if-not-native

TEST_DEPENDS =		emacs->=24:editors/emacs

USE_GMAKE =	Yes

# CFLAGS _must_ be empty. This is an OCaml compiler.
MAKE_FLAGS =	NATIVE=${MODOCAML_NATIVE:S/Yes/true/:S/No/false/} \
		OCAMLOPT=ocamlopt.opt \
		CFLAGS=

FLAVORS =	no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
MAKE_FLAGS +=	UISTYLE=text
.else
WANTLIB +=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB +=	Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB +=	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB +=	harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB +=	z
BUILD_DEPENDS +=	x11/lablgtk2
LIB_DEPENDS +=		x11/gtk+2
MAKE_FLAGS +=		UISTYLE=gtk2
.endif

FLAVOR_COMMA =   ${FLAVOR_EXT:S/-/,/g}
SUBST_VARS =     FLAVOR_COMMA

# Avoid multiple all:: entries and use the real target entry.
ALL_TARGET =	unison
TEST_TARGET =	selftest

PORTHOME =	${WRKDIR}
WRKDIST =	${WRKDIR}/${DISTNAME}/src
DOCS =		NEWS.md README.md

# Avoid the nightmare of their Makefile install target.
# Do not use INSTALL_PROGRAM, as the bytecode version must not be stripped!
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/unison ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unison
	@cd ${WRKSRC}/.. && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unison

.include <bsd.port.mk>
