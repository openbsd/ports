# $OpenBSD: Makefile,v 1.14 2009/04/03 21:30:50 sturm Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=		ocamldoc hangs build
.endif

COMMENT=	Objective Caml bindings for PostgreSQL
CATEGORIES=	databases

V=		1.4.6
DISTNAME=	postgresql-ocaml-${V}
PKGNAME=	ocaml-postgresql-${V}p3
MASTER_SITES=	http://ocaml.info/ocaml_sources/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://ocaml.info/home/ocaml_sources.html\#toc9

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
NO_REGRESS= 	Yes
ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,allopt,:S,No,,}
USE_GMAKE=	Yes

BUILD_DEPENDS=	::databases/postgresql
RUN_DEPENDS=	::databases/postgresql
MY_CFLAGS=	${CFLAGS} -I${LOCALBASE}/include/postgresql
MY_LIBDIRS=	${LOCALBASE]/lib
EXAMPLES_DIR=	${PREFIX}/share/examples/ocaml-postgresql
MAKE_ENV=	MY_CFLAGS="${MY_CFLAGS}" MY_LIBDIRS="${MY_LIBDIRS}"
PGOCAMLDIR=	${PREFIX}/lib/ocaml/postgresql

BYTECODE_FILES=	postgresql.cma postgresql.cmi postgresql.mli libpostgresql_stubs.a
NATIVE_FILES=	postgresql.a postgresql.cmxa
INST_FILES=	${BYTECODE_FILES} ${MODOCAML_NATIVE:S,Yes,${NATIVE_FILES},:S,No,,}

do-install:
	${INSTALL_DATA_DIR} ${PGOCAMLDIR}
	for i in ${INST_FILES}; do ${INSTALL_DATA} ${WRKBUILD}/lib/$$i ${PGOCAMLDIR}; done
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	@cp -R ${WRKSRC}/examples/* ${EXAMPLES_DIR}
	@echo INCDIRS = ${LOCALBASE}/lib/ocaml/postgresql >> ${EXAMPLES_DIR}/OCamlMakefile
	@echo LIBDIRS = ${LOCALBASE}/lib >> ${EXAMPLES_DIR}/OCamlMakefile
	@cat ${WRKSRC}/OCamlMakefile >> ${EXAMPLES_DIR}/OCamlMakefile

.include <bsd.port.mk>
