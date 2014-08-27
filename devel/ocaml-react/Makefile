# $OpenBSD: Makefile,v 1.5 2014/08/27 08:05:17 chrisz Exp $

COMMENT =	functional reactive programming (FRP) for OCaml
CATEGORIES =	devel

V =		1.1.0
DISTNAME =	react-${V}
EXTRACT_SUFX =	.tbz
NAME =		ocaml-react
PKGNAME =	${NAME}-${V}
MASTER_SITES =	http://erratique.ch/software/react/releases/

HOMEPAGE =	http://erratique.ch/software/react


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

RUN_DEPENDS =	lang/ocaml

ALL_TARGET =	react.{cma,cmi,mli}
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	react.{a,cmx,cmxa}
.if ${PROPERTIES:Mocaml_native_dynlink}
ALL_TARGET +=	react.cmxs
.endif
.endif


do-build:
	cd ${WRKSRC} && ocamlbuild ${ALL_TARGET}

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/lib/ocaml/react
	${INSTALL_SCRIPT} \
		${WRKSRC}/pkg/META \
		${ALL_TARGET:S|^|${WRKSRC}/_build/src/|} \
		${PREFIX}/lib/ocaml/react/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${NAME}/api
	${INSTALL_DATA} ${WRKDIST}/{README,CHANGES}.md ${PREFIX}/share/doc/${NAME}/
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/${NAME}/api/


.include <bsd.port.mk>
