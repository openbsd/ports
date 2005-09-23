# $OpenBSD: Makefile,v 1.1.1.1 2005/09/23 14:27:27 avsm Exp $

COMMENT=	"XML extension types for Objective Caml"
CATEGORIES=	lang textproc

V=		3.08.4pl3
DISTNAME=	ocamlduce-${V}
MASTER_SITES=	http://pauillac.inria.fr/~frisch/ocamlcduce/download/
WRKDIST=	${WRKDIR}/ocaml-sub

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.cduce.org/ocaml.html

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
RUN_DEPENDS=	:ocaml-3.08.4:lang/ocaml
WANTLIB=	curses m c pthread

NO_REGRESS= 	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-prefix ${PREFIX}
MAKE_FILE=	Makefile.ocamlduce
BYT_FLAGS=	CAMLC=ocamlc CAMLOPT=ocamlopt CAMLDEP=ocamldep
MAKE_FLAGS=	${MODOCAML_NATIVE:S,Yes,,:S,No,${BYT_FLAGS},}
ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,opt,:S,No,,}
INSTALL_TARGET=	minstall ${MODOCAML_NATIVE:S,Yes,minstallopt,:S,No,,}

.include <bsd.port.mk>
