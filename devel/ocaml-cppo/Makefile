# $OpenBSD: Makefile,v 1.10 2021/12/10 04:10:59 daniel Exp $

COMMENT =	OCaml preprocessor
CATEGORIES =	devel

GH_ACCOUNT =	ocaml-community
GH_PROJECT =	cppo
GH_TAGNAME =	v1.6.6
REVISION =	4
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
