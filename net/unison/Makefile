# $OpenBSD: Makefile,v 1.8 2014/10/16 16:07:51 chrisz Exp $

COMMENT=	multi-platform file synchronization tool
CATEGORIES=	net

V=		2.40.102
REVISION =	5
DISTNAME=	unison-${V}
MASTER_SITES=	${HOMEPAGE}download/releases/stable/

HOMEPAGE=	http://www.cis.upenn.edu/~bcpierce/unison/
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m util

MODULES=	lang/ocaml

USE_GMAKE=	Yes

FLAVORS=	no_x11
FLAVOR?=

FLAVOR_COMMA=   ${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=     FLAVOR_COMMA

.if ${FLAVOR:Mno_x11}
MAKE_FLAGS=	UISTYLE=text
.else
MODULES +=	devel/gettext
BUILD_DEPENDS+=	x11/lablgtk2
LIB_DEPENDS=	x11/gtk+2
MAKE_FLAGS=	UISTYLE=gtk2
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 atk-1.0 cairo z
WANTLIB += pthread
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


.include <bsd.port.mk>
