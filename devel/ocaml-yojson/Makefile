# $OpenBSD: Makefile,v 1.5 2019/09/26 09:46:10 chrisz Exp $

COMMENT =	optimized parsing and printing library for the JSON format
CATEGORIES =	devel

GH_ACCOUNT =	ocaml-community
GH_PROJECT =	yojson
GH_TAGNAME =	1.7.0
REVISION =	2
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

RUN_DEPENDS =	devel/ocaml-easy-format \
		devel/ocaml-biniou

BUILD_DEPENDS = ${RUN_DEPENDS} \
		devel/dune \
		devel/ocaml-cppo

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
