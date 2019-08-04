# $OpenBSD: Makefile,v 1.4 2019/08/04 18:40:20 chrisz Exp $

COMMENT =	OCaml preprocessor
CATEGORIES =	devel

GH_ACCOUNT =	ocaml-community
GH_PROJECT =	cppo
GH_TAGNAME =	v1.6.6
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune \
		sysutils/findlib \
		devel/ocaml-ocamlbuild

FAKE_FLAGS =	OCAMLFIND_DESTDIR=${LOCALBASE}/lib/ocaml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
