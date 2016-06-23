# $OpenBSD: Makefile,v 1.3 2016/06/23 19:23:53 krw Exp $

COMMENT =	declarative definition of command line interfaces
CATEGORIES =	devel

V =		0.9.7
NAME =		cmdliner
DISTNAME =	${NAME}-${V}
EXTRACT_SUFX =	.tbz
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://erratique.ch/software/${NAME}/releases/
REVISION = 	0

HOMEPAGE =	http://erratique.ch/software/${NAME}


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-ocamlbuild
RUN_DEPENDS =	lang/ocaml

ALL_TARGET =	${NAME}.{cma,cmi,mli}
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	${NAME}.{a,cmx,cmxa}
.if ${PROPERTIES:Mocaml_native_dynlink}
ALL_TARGET +=	${NAME}.cmxs
.endif
.endif


do-build:
	cd ${WRKSRC} && ocamlbuild ${ALL_TARGET}

do-install:
	env -i ${MAKE_ENV} ocamlfind install ${NAME} \
		${WRKSRC}/pkg/META \
		${ALL_TARGET:S|^|${WRKSRC}/_build/src/|}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${NAME}/api
	${INSTALL_DATA} \
		${WRKDIST}/{README,CHANGES}.md \
		${PREFIX}/share/doc/ocaml-${NAME}/
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/ocaml-${NAME}/api/


.include <bsd.port.mk>
