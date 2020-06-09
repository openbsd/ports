# $OpenBSD: Makefile,v 1.5 2020/06/09 17:34:13 chrisz Exp $

COMMENT =	interface to the OCaml stdlib Format module
CATEGORIES =	devel

GH_ACCOUNT =	mjambon
GH_PROJECT =	easy-format
GH_TAGNAME =	v1.3.1
REVISION =	2
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
