# $OpenBSD: Makefile.inc,v 1.28 2019/02/04 18:55:08 bket Exp $

COMMENT=	multi-platform file synchronization tool

GH_ACCOUNT=	bcpierce00
GH_PROJECT=	unison

CATEGORIES=	net

HOMEPAGE=	https://www.cis.upenn.edu/~bcpierce/unison/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m util

MODULES=	lang/ocaml
TEST_DEPENDS+=	emacs->=24:editors/emacs

# CFLAGS _must_ be empty.  This is an OCaml compiler.
MAKE_FLAGS=	NATIVE=${MODOCAML_NATIVE:S/Yes/true/:S/No/false/} \
		OCAMLOPT=ocamlopt.opt \
		CFLAGS=

USE_GMAKE=	Yes

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
MAKE_FLAGS+=	UISTYLE=text
.else
BUILD_DEPENDS+=	x11/lablgtk2
LIB_DEPENDS+=	x11/gtk+2
MAKE_FLAGS+=	UISTYLE=gtk2
WANTLIB+=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB+=	Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB+=	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB+=	intl pango-1.0 pangocairo-1.0 pangoft2-1.0 z
.endif

FLAVOR_COMMA=   ${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=     FLAVOR_COMMA

# Avoid multiple all:: entries and use the real target entry.
ALL_TARGET=	unison

TEST_TARGET=	selftest

PORTHOME=	${WRKDIR}

WRKDIST=	${WRKDIR}/${DISTNAME}/src

DOCS=		BUGS.txt NEWS README

# Avoid the nightmare of their Makefile install target.
# Do not use INSTALL_PROGRAM, as the bytecode version must not be stripped!
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/unison ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unison
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unison
