# $OpenBSD: Makefile,v 1.1.1.1 2004/06/12 22:03:12 avsm Exp $

COMMENT=	"Objective Caml bindings for PostgreSQL"
CATEGORIES=	databases

V=		1.3.3
DISTNAME=	postgresql-ocaml-${V}
PKGNAME=	ocaml-postgresql-${V}
MASTER_SITES=	http://www.oefai.at/~markus/ocaml_sources/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.oefai.at/~markus/ocaml_sources/

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	ocaml
NO_REGRESS= 	Yes

ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,allopt,:S,No,,}
USE_GMAKE=	Yes

LIB_DEPENDS=	pq.3::databases/postgresql
BUILD_DEPENDS=	::sysutils/findlib
RUN_DEPENDS=	::sysutils/findlib

MY_CFLAGS=	${CFLAGS} -I${LOCALBASE}/include/postgresql
MY_LIBDIRS=	${LOCALBASE]/lib
FINDLIB_DIR=	${PREFIX}/lib/ocaml/site-lib
EXAMPLES_DIR=	${PREFIX}/share/examples/ocaml-postgresql

MAKE_ENV=	MY_CFLAGS="${MY_CFLAGS}" MY_LIBDIRS="${MY_LIBDIRS}"  \
		MY_INSTDIR=${DESTDIR}${FINDLIB_DIR}

pre-fake:
	${INSTALL_DATA_DIR} ${FINDLIB_DIR}

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	@cp -R ${WRKSRC}/examples/* ${EXAMPLES_DIR}
	@echo INCDIRS := $$\(shell ocamlfind query postgresql\) >> ${EXAMPLES_DIR}/OCamlMakefile
	@echo LIBDIRS = ${LOCALBASE}/lib >> ${EXAMPLES_DIR}/OCamlMakefile
	@cat ${WRKSRC}/OCamlMakefile >> ${EXAMPLES_DIR}/OCamlMakefile

.include <bsd.port.mk>
