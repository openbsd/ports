# $OpenBSD: Makefile,v 1.2 2019/08/17 13:29:42 chrisz Exp $

COMMENT =	library for feature testing
CATEGORIES =	devel

GH_ACCOUNT =	janestreet
GH_PROJECT =	configurator
GH_TAGNAME =	v0.11.0
PKGNAME =	ocaml-${DISTNAME}

# MIT
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune

ALL_TARGET =

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
