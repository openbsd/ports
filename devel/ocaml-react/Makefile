# $OpenBSD: Makefile,v 1.4 2014/08/22 22:49:07 kili Exp $

COMMENT =	functional reactive programming (FRP) for OCaml
CATEGORIES =	devel

V =		0.9.4
REVISION =	1
DISTNAME =	react-${V}
EXTRACT_SUFX =	.tbz
NAME =		ocaml-react
PKGNAME =	${NAME}-${V}
MASTER_SITES =	http://erratique.ch/software/react/releases/

HOMEPAGE =	http://erratique.ch/software/react


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib
RUN_DEPENDS =	lang/ocaml

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests

ALL_TARGET =	-build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${NAME}/api
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/${NAME}/api/
	${INSTALL_DATA} ${WRKDIST}/{README,CHANGES} ${PREFIX}/share/doc/${NAME}/


.include <bsd.port.mk>
