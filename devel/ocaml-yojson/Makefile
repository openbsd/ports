# $OpenBSD: Makefile,v 1.1.1.1 2019/08/04 19:07:43 chrisz Exp $

COMMENT =	optimized parsing and printing library for the JSON format
CATEGORIES =	devel

GH_ACCOUNT =	ocaml-community
GH_PROJECT =	yojson
GH_TAGNAME =	1.7.0
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune \
		devel/ocaml-cppo \
		devel/ocaml-easy-format \
		devel/ocaml-biniou

FAKE_FLAGS =	OCAMLFIND_DESTDIR=${LOCALBASE}/lib/ocaml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
