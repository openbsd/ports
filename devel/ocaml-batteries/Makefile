# $OpenBSD: Makefile,v 1.8 2013/11/25 14:35:26 dcoppa Exp $

COMMENT =	OCaml Batteries Included - OCaml foundation library
CATEGORIES =	devel

GH_VER =	v2.1.0
DISTNAME =	batteries-included-${GH_VER:S/v//}
PKGNAME =	ocaml-batteries-${GH_VER:S/v//}
MASTER_SITES =	https://github.com/ocaml-batteries-team/batteries-included/archive/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

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
