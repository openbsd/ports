# $OpenBSD: Makefile,v 1.5 2019/09/26 09:46:10 chrisz Exp $

COMMENT =	binary data format designed for speed, safety, usability
CATEGORIES =	devel

GH_ACCOUNT =	mjambon
GH_PROJECT =	biniou
GH_TAGNAME =	v1.2.0
REVISION =	2
PKGNAME =	ocaml-${DISTNAME}

# 3-clause BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MODULES =	lang/ocaml

RUN_DEPENDS =	devel/ocaml-easy-format

BUILD_DEPENDS = ${RUN_DEPENDS} \
		devel/dune

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
