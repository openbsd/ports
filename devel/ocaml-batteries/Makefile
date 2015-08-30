# $OpenBSD: Makefile,v 1.14 2015/08/30 15:52:33 avsm Exp $

COMMENT =	OCaml Batteries Included - OCaml foundation library
CATEGORIES =	devel

V =		2.3.1
GH_ACCOUNT =	ocaml-batteries-team
GH_PROJECT =	batteries-included
GH_TAGNAME =	v$V
DISTNAME =	${GH_PROJECT}-$V
PKGNAME =	ocaml-batteries-$V

HOMEPAGE =	http://batteries.forge.ocamlcore.org/

MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

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
