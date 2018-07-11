# $OpenBSD: Makefile,v 1.1.1.1 2018/07/11 14:50:55 chrisz Exp $

BROKEN =		in preparation for OCaml 4.06
COMMENT =		OCaml build system

CATEGORIES =		sysutils devel

V =			1.0+beta20
GH_ACCOUNT =		ocaml
GH_PROJECT =		dune
GH_TAGNAME =		${V}
DISTNAME =		${GH_PROJECT}-${V}
WRKDIST =		${WRKDIR}/dune-1.0-beta20

PKGNAME =		dune-${V}

HOMEPAGE =		https://github.com/ocaml/dune

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib

CONFIGURE_STYLE =	simple

USE_GMAKE =		Yes

ALL_TARGET =		release
INSTALL_TARGET =	install
TEST_TARGET =		tests

idir =			${WRKSRC}/_build/install/default
docdir =		${PREFIX}/share/doc/dune


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dune
	${INSTALL_DATA} \
		${idir}/doc/jbuilder/{CHANGES,README,LICENSE}.md \
		${PREFIX}/share/doc/dune
	${INSTALL_MAN} ${idir}/man/man1/* ${PREFIX}/man/man1/
	${INSTALL_MAN} ${idir}/man/man5/* ${PREFIX}/man/man5/
	${INSTALL_PROGRAM} ${idir}/bin/* ${PREFIX}/bin/

.include <bsd.port.mk>
