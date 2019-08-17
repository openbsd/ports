# $OpenBSD: Makefile,v 1.6 2019/08/17 13:29:42 chrisz Exp $

COMMENT =		OCaml build system

CATEGORIES =		devel

GH_ACCOUNT =		ocaml
GH_PROJECT =		dune
GH_TAGNAME =		1.10.0
REVISION =		1

HOMEPAGE =		https://github.com/ocaml/dune

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--libdir ${PREFIX}/lib/ocaml/

USE_GMAKE =		Yes

MAKE_FLAGS =		DUNE_FLAGS="--display verbose -j ${MAKE_JOBS}"
ALL_TARGET =		release

FAKE_FLAGS =		PREFIX=${PREFIX} LIBDIR=lib/ocaml
INSTALL_TARGET =	install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-${GH_PROJECT}
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/ocaml-${GH_PROJECT}/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
