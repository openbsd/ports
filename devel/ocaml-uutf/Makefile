# $OpenBSD: Makefile,v 1.4 2019/03/04 12:51:14 chrisz Exp $

COMMENT =	non-blocking streaming unicode codec
CATEGORIES =	devel

V =		1.0.1
NAME =		uutf
DISTNAME =	${NAME}-${V}
EXTRACT_SUFX =	.tbz
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://erratique.ch/software/${NAME}/releases/

HOMEPAGE =	http://erratique.ch/software/${NAME}


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-ocamlbuild

ALL_TARGET =	${NAME}.{cma,cmi,mli}
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	${NAME}.{a,cmx,cmxa}
.if ${PROPERTIES:Mocaml_native_dynlink}
ALL_TARGET +=	${NAME}.cmxs
.endif
.endif


do-build:
	cd ${WRKSRC} && ocamlbuild -use-ocamlfind \
		${ALL_TARGET} doc/api.docdir/index.html

do-install:
	env -i ${MAKE_ENV} ocamlfind install ${NAME} \
		${WRKSRC}/pkg/META \
		${ALL_TARGET:S|^|${WRKSRC}/_build/src/|}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${NAME}/api
	${INSTALL_DATA} \
		${WRKSRC}/*.md \
		${PREFIX}/share/doc/ocaml-${NAME}/
	${INSTALL_DATA} \
		${WRKSRC}/_build/doc/api.docdir/* \
		${PREFIX}/share/doc/ocaml-${NAME}/api/


.include <bsd.port.mk>
