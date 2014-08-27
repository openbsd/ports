# $OpenBSD: Makefile,v 1.11 2014/08/27 07:54:22 chrisz Exp $

COMMENT =	OCaml Batteries Included - OCaml foundation library
CATEGORIES =	devel

V =		2.2.0
GH_ACCOUNT =	ocaml-batteries-team
GH_PROJECT =	batteries-included
GH_TAGNAME =	v$V
GH_COMMIT =	9370680ef30e225e50c76fc05654a897d79ee79d
DISTNAME =	${GH_PROJECT}-$V
PKGNAME =	ocaml-batteries-$V
REVISION =	0

HOMEPAGE =	http://batteries.forge.ocamlcore.org/

MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >=2.1
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ocaml

RUN_DEPENDS =		devel/ocaml-camomile
BUILD_DEPENDS =		${RUN_DEPENDS} sysutils/findlib
# ocaml-test not available yet
#TEST_DEPENDS = 	devel/ounit devel/ocaml-qtest
TEST_DEPENDS = 	devel/ounit

USE_GMAKE =	Yes

MAKE_ENV =	DOCROOT=${PREFIX}/share/doc/ocaml-batteries

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_ENV +=	BATTERIES_NATIVE=yes
.else
MAKE_ENV +=	BATTERIES_NATIVE=no
.endif

FAKE_FLAGS =	DOCROOT=${WRKINST}${PREFIX}/share/doc/ocaml-batteries

ALL_TARGET =		all doc
INSTALL_TARGET =	install install-doc
TEST_TARGET =	test


post-install:
	${INSTALL_DATA} \
		${WRKSRC}/ocamlinit \
		${PREFIX}/share/doc/ocaml-batteries/


.include <bsd.port.mk>
