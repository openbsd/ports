# $OpenBSD: Makefile,v 1.8 2020/06/09 17:34:13 chrisz Exp $

COMMENT =	OCaml preprocessor
CATEGORIES =	devel

GH_ACCOUNT =	ocaml-community
GH_PROJECT =	cppo
GH_TAGNAME =	v1.6.6
REVISION =	2
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune \
		devel/ocaml-ocamlbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
