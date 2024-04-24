COMMENT =	optimized parsing and printing library for the JSON format
CATEGORIES =	devel

V =		1.7.0.20211122
GH_ACCOUNT =	ocaml-community
GH_PROJECT =	yojson
GH_COMMIT =	187132277170a30c5c3b0672c548c82fc372e43a
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-${DISTNAME}
REVISION =	5

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = ${RUN_DEPENDS} \
		devel/dune \
		devel/ocaml-cppo

post-install:
	mv ${PREFIX}/share/doc/${GH_PROJECT} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}

.include <bsd.port.mk>
