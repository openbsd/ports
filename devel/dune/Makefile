# $OpenBSD: Makefile,v 1.1.1.1 2019/02/10 18:45:43 jca Exp $

COMMENT =		OCaml build system

CATEGORIES =		devel

GH_ACCOUNT =		ocaml
GH_PROJECT =		dune
GH_TAGNAME =		1.6.3

HOMEPAGE =		https://github.com/ocaml/dune

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib

CONFIGURE_STYLE =	simple

USE_GMAKE =		Yes
MAKE_FLAGS =		DUNE_FLAGS="--display verbose -j ${MAKE_JOBS}"
ALL_TARGET =		release
INSTALL_TARGET =	install

idir =			${WRKSRC}/_build_bootstrap/install/default
docdir =		${PREFIX}/share/doc/dune

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dune
	${INSTALL_DATA} \
		${idir}/doc/dune/{CHANGES,README,LICENSE}.md \
		${PREFIX}/share/doc/dune
	${INSTALL_MAN} ${idir}/man/man1/* ${PREFIX}/man/man1/
	${INSTALL_MAN} ${idir}/man/man5/* ${PREFIX}/man/man5/
	${INSTALL_PROGRAM} ${idir}/bin/* ${PREFIX}/bin/

.include <bsd.port.mk>
