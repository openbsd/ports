# $OpenBSD: Makefile,v 1.14 2021/12/19 21:33:27 jca Exp $

MULTI_PACKAGES =	-main -private -configurator

COMMENT-main =		OCaml build system
COMMENT-private =	private libraries of the dune build system
COMMENT-configurator =	OCaml library for gathering system configuration
REVISION-configurator =	1
REVISION-main =		0
REVISION-private =	1

VERSION =		2.7.0

CATEGORIES =		devel

GH_ACCOUNT =		ocaml
GH_PROJECT =		dune
GH_TAGNAME =		${VERSION}

HOMEPAGE =		https://github.com/ocaml/dune

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB-main =		c m pthread

MODULES =		lang/ocaml

RUN_DEPENDS-configurator = devel/dune,-private

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--libdir ${PREFIX}/lib/ocaml/

USE_GMAKE =		Yes

ALL_TARGET =		release

#FAKE_FLAGS =		PREFIX=${PREFIX} LIBDIR=lib/ocaml
INSTALL_TARGET =	install

#./dune.exe build --display=short
post-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} \
	./dune.exe build --display=short \
	dune-private-libs.install dune-configurator.install

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${FAKE_SETUP} \
	./dune.exe install --display=short \
	dune dune-private-libs dune-configurator

post-install:
	mv ${PREFIX}/doc/* ${PREFIX}/share/doc/
	rmdir ${PREFIX}/doc

.include <bsd.port.mk>
