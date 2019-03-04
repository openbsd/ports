# $OpenBSD: Makefile,v 1.2 2019/03/04 12:51:12 chrisz Exp $

COMMENT =	OCaml preprocessor
CATEGORIES =	devel

V =		1.6.5
GH_ACCOUNT =	mjambon
GH_PROJECT =	cppo
GH_TAGNAME =	v${V}
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	https://github.com/mjambon/cppo

# BSD 3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m
MODULES =		lang/ocaml

BUILD_DEPENDS =		devel/dune \
			sysutils/findlib \
			devel/ocaml-ocamlbuild

MAKE_ENV +=		BINDIR=${DESTDIR}${PREFIX}/bin

INST_DIR =		${WRKSRC}/_build/install/default


do-install:
	${INSTALL_SCRIPT} \
		${INST_DIR}/bin/cppo \
		${PREFIX}/bin/
	${INSTALL_DATA_DIR} \
		${PREFIX}/lib/ocaml/cppo_ocamlbuild \
		${PREFIX}/share/doc/cppo
	${INSTALL_DATA} \
		${INST_DIR}/lib/cppo_ocamlbuild/{META,*.*} \
		${PREFIX}/lib/ocaml/cppo_ocamlbuild/
	${INSTALL_DATA} \
		${INST_DIR}/doc/cppo/* \
		${PREFIX}/share/doc/cppo/


.include <bsd.port.mk>
