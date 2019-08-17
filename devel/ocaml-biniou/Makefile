# $OpenBSD: Makefile,v 1.2 2019/08/17 13:29:42 chrisz Exp $

COMMENT =	binary data format designed for speed, safety, usability
CATEGORIES =	devel

GH_ACCOUNT =	mjambon
GH_PROJECT =	biniou
GH_TAGNAME =	v1.2.0
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

BUILD_DEPENDS = devel/dune \
		devel/ocaml-easy-format

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
