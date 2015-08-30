# $OpenBSD: Makefile,v 1.2 2015/08/30 16:23:06 avsm Exp $

COMMENT =	non-blocking streaming JSON codec
CATEGORIES =	devel

V =		0.9.1
NAME =		jsonm
DISTNAME =	${NAME}-${V}
EXTRACT_SUFX =	.tbz
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://erratique.ch/software/${NAME}/releases/
REVISION =      1

HOMEPAGE =	http://erratique.ch/software/${NAME}


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ocaml

WANTLIB +=		c m

RUN_DEPENDS =		devel/ocaml-uutf
BUILD_DEPENDS =		devel/ocaml-uutf

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
