# $OpenBSD: Makefile.inc,v 1.24 2014/06/28 21:08:09 kili Exp $

DISTNAME=	unison-$V
CATEGORIES=	net

HOMEPAGE=	http://www.cis.upenn.edu/~bcpierce/unison/
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m util

MODULES=	lang/ocaml

USE_GMAKE=	Yes

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
MAKE_FLAGS=	UISTYLE=text
.else
MODULES +=	devel/gettext
BUILD_DEPENDS+=	x11/lablgtk2
LIB_DEPENDS=	x11/gtk+2
MAKE_FLAGS=	UISTYLE=gtk2
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender expat fontconfig freetype pixman-1 pthread-stubs
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 atk-1.0 cairo png xcb z
WANTLIB += GL Xxf86vm drm gthread-2.0 pthread xcb-render xcb-shm
.endif

# CFLAGS _must_ be empty.  This is an OCaml compiler.
MAKE_FLAGS+=	NATIVE=${MODOCAML_NATIVE:S/Yes/true/:S/No/false/} \
		OCAMLOPT=ocamlopt.opt \
		CFLAGS=

TEST_TARGET=	selftest
PORTHOME=	${WRKDIR}

# Avoid multiple all:: entries and use the real target entry.
ALL_TARGET=	unison

DOCS=		BUGS.txt NEWS README

# Avoid the nightmare of their Makefile install target.
# Do not use INSTALL_PROGRAM, as the bytecode version must not be stripped!
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/unison ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unison
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unison
