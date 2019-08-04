# $OpenBSD: Makefile,v 1.1.1.1 2019/08/04 19:06:03 chrisz Exp $

COMMENT =	interface to the OCaml stdlib Format module
CATEGORIES =	devel

GH_ACCOUNT =	mjambon
GH_PROJECT =	easy-format
GH_TAGNAME =	v1.3.1
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune \
		sysutils/findlib

FAKE_FLAGS =	OCAMLFIND_DESTDIR=${LOCALBASE}/lib/ocaml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
