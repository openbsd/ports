# $OpenBSD: Makefile,v 1.5 2013/01/08 21:50:17 chrisz Exp $

COMMENT =	OCaml Batteries Included - OCaml foundation library
CATEGORIES =	devel

V =		2.0.0
DISTNAME =	batteries-included-${V}
PKGNAME =	ocaml-batteries-${V}
DISTFILES =	v${V}.tar.gz
DIST_SUBDIR =	ocaml-batteries
MASTER_SITES =	https://github.com/ocaml-batteries-team/batteries-included/archive/

HOMEPAGE =	http://batteries.forge.ocamlcore.org/

MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >=2.1
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =		lang/ocaml

RUN_DEPENDS =		devel/ocaml-camomile
BUILD_DEPENDS =		${RUN_DEPENDS} sysutils/findlib
REGRESS_DEPENDS = 	devel/ounit devel/ocaml-qtest

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
REGRESS_TARGET =	test


post-install:
	${INSTALL_DATA} \
		${WRKSRC}/ocamlinit \
		${PREFIX}/share/doc/ocaml-batteries/


.include <bsd.port.mk>
