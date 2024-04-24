COMMENT =	OCaml preprocessor
CATEGORIES =	devel

GH_ACCOUNT =	ocaml-community
GH_PROJECT =	cppo
GH_TAGNAME =	v1.6.6
REVISION =	8
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune \
		devel/ocaml-ocamlbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/share/doc/${GH_PROJECT} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/share/doc/cppo_ocamlbuild ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/

.include <bsd.port.mk>
