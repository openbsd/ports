# $OpenBSD: Makefile,v 1.2 2006/05/29 03:55:33 avsm Exp $

COMMENT=	"XML extension types for Objective Caml"
CATEGORIES=	lang textproc

V=		3.09.2pl1
DISTNAME=	ocamlduce-${V}
MASTER_SITES=	http://pauillac.inria.fr/~frisch/ocamlcduce/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.cduce.org/ocaml.html

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
WANTLIB=	curses m c pthread

NO_REGRESS= 	Yes
USE_GMAKE=	Yes
MAKE_FLAGS=	CAMLC=ocamlc${MODOCAML_NATIVE:S,Yes,.opt,:S,No,,}
FAKE_FLAGS=	CAMLC=ocamlc${MODOCAML_NATIVE:S,Yes,.opt,:S,No,,}
ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,opt,:S,No,,}

BUILD_DEPENDS=	::sysutils/findlib
RUN_DPENDS=	::sysutils/findlib

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib

.include <bsd.port.mk>
