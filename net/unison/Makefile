# $OpenBSD: Makefile,v 1.1.1.1 2002/12/22 09:47:24 sturm Exp $

COMMENT=	"multi-platform file synchronization tool"

DISTNAME=	unison-2.9.1
CATEGORIES=	net

HOMEPAGE=	http://www.cis.upenn.edu/~bcpierce/unison/

MAINTAINER=	Zvezdan Petkovic <zvezdan@cs.wm.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/stable/${DISTNAME}/
DISTFILES=	src.tar.gz
DIST_SUBDIR=	${DISTNAME}

MODULES=	ocaml

USE_GMAKE=	Yes

FLAVORS=	gtk
FLAVOR?=
.if ${FLAVOR:L:Mgtk}
BUILD_DEPENDS+=	::x11/lablgtk
LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+
MAKE_FLAGS=	UISTYLE=gtk
USE_X11=	Yes
.else
MAKE_FLAGS=	UISTYLE=text
.endif

MAKE_FLAGS+=	NATIVE=${MODOCAML_NATIVE:S/Yes/true/:S/No/false/} \
		OCAMLOPT=ocamlopt.opt
# We are still not sure whether ocaml works -with-pthreads on all
# architectures.  For now keep it at default false.
# MAKE_FLAGS+=	THREADS=true

NO_REGRESS=	Yes

# CFLAGS _must_ be empty.  This is an OCaml compiler.
CFLAGS=

# Empty to avoid multiple all:: entries and use the first target entry.
ALL_TARGET=

DOCS=		BUGS.txt NEWS README

# Avoid the nightmare of their Makefile install target.
# Do not use INSTALL_PROGRAM, as the bytecode version must not be stripped!
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/unison ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unison
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unison

.include <bsd.port.mk>
