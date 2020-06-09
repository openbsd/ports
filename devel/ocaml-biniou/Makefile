# $OpenBSD: Makefile,v 1.7 2020/06/09 17:34:13 chrisz Exp $

COMMENT =	binary data format designed for speed, safety, usability
CATEGORIES =	devel

GH_ACCOUNT =	ocaml-community
GH_PROJECT =	biniou
GH_TAGNAME =	1.2.1
REVISION =	0
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
