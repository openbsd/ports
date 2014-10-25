# $OpenBSD: Makefile,v 1.1.1.1 2014/10/25 17:01:23 chrisz Exp $

COMMENT =	non-blocking streaming JSON codec
CATEGORIES =	devel

V =		0.9.1
NAME =		jsonm
DISTNAME =	${NAME}-${V}
EXTRACT_SUFX =	.tbz
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://erratique.ch/software/${NAME}/releases/

HOMEPAGE =	http://erratique.ch/software/${NAME}


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ocaml

WANTLIB +=		c m

RUN_DEPENDS =		devel/ocaml-uutf
BUILD_DEPENDS =		${RUN_DEPENDS}

CONFIGURE_STYLE =	oasis

ALL_TARGET =		-build


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${NAME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${NAME}/api
	${INSTALL_DATA} ${WRKDIST}/doc/* \
		${PREFIX}/share/doc/ocaml-${NAME}/api/
	${INSTALL_DATA} ${WRKDIST}/{CHANGES,README} \
		${PREFIX}/share/doc/ocaml-${NAME}/


.include <bsd.port.mk>
