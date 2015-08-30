# $OpenBSD: Makefile,v 1.6 2015/08/30 16:33:02 avsm Exp $

COMMENT =	streaming XML input/output for OCaml
CATEGORIES =	textproc

V =		1.2.0
NAME =		xmlm
DISTNAME =	${NAME}-${V}
PKGNAME =	ocaml-${DISTNAME}
EXTRACT_SUFX =	.tbz
MASTER_SITES =	http://erratique.ch/software/xmlm/releases/

MAINTAINER =	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE =	http://erratique.ch/software/xmlm

# 3-clause BSD
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

WANTLIB =	c m
BUILD_DEPENDS =	sysutils/findlib

BUILD_DEPENDS = sysutils/findlib

ALL_TARGET = ${NAME}.{cma,cmi,mli}
INSTALL_TARGET = ${ALL_TARGET} ${NAME}.cmt

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
XMLTRIP_BINARY = xmltrip.native
ALL_TARGET += ${NAME}.{a,cmx,cmxa}
.if ${PROPERTIES:Mocaml_native_dynlink}
ALL_TARGET += ${NAME}.cmxs
.endif
.else
XMLTRIP_BINARY = xmltrip.byte
.endif

do-build:
	cd ${WRKSRC} && ocamlbuild ${ALL_TARGET} ${XMLTRIP_BINARY}

do-install:
	env -i ${MAKE_ENV} ocamlfind install ${NAME} \
		${WRKSRC}/pkg/META \
		${INSTALL_TARGET:S|^|${WRKSRC}/_build/src/|}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${NAME}/api
	${INSTALL_DATA} \
		${WRKDIST}/{README,CHANGES}.md \
		${PREFIX}/share/doc/ocaml-${NAME}/
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/ocaml-${NAME}/api/
	${INSTALL_SCRIPT} ${WRKSRC}/_build/test/${XMLTRIP_BINARY} ${PREFIX}/bin/xmltrip

.include <bsd.port.mk>
