# $OpenBSD: Makefile.inc,v 1.10 2009/10/09 18:01:19 giovanni Exp $

DISTNAME=	unison-$V
CATEGORIES=	net

HOMEPAGE=	http://www.cis.upenn.edu/~bcpierce/unison/
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m util

MODULES=	lang/ocaml

USE_GMAKE=	Yes

FLAVORS=	no_x11
FLAVOR?=
.if ${FLAVOR:L:Mno_x11}
MAKE_FLAGS=	UISTYLE=text
.else
BUILD_DEPENDS+=	::x11/lablgtk2
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
MAKE_FLAGS=	UISTYLE=gtk2
USE_X11=	Yes
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender expat fontconfig freetype pixman-1 pthread-stubs
WANTLIB += atk-1.0 iconv intl cairo glitz png xcb z
.endif

# CFLAGS _must_ be empty.  This is an OCaml compiler.
MAKE_FLAGS+=	NATIVE=${MODOCAML_NATIVE:S/Yes/true/:S/No/false/} \
		OCAMLOPT=ocamlopt.opt \
		CFLAGS=

# We are still not sure whether ocaml works -with-pthreads on all
# architectures.  For now keep it at default false.
# MAKE_FLAGS+=	THREADS=true

NO_REGRESS=	Yes

# Avoid multiple all:: entries and use the real target entry.
ALL_TARGET=	unison

DOCS=		BUGS.txt NEWS README

# Avoid the nightmare of their Makefile install target.
# Do not use INSTALL_PROGRAM, as the bytecode version must not be stripped!
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/unison ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unison
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unison
