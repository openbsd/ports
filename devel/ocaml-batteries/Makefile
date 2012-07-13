# $OpenBSD: Makefile,v 1.2 2012/07/13 11:27:16 edd Exp $

COMMENT =	OCaml Batteries Included - OCaml foundation library
CATEGORIES =	devel
REVISION =	0

V =		1.4.3
# $N changes with every release, too.
N =		884
DISTNAME =	batteries-${V}
PKGNAME =	ocaml-batteries-${V}

MASTER_SITES =	https://forge.ocamlcore.org/frs/download.php/$N/

HOMEPAGE =	http://batteries.forge.ocamlcore.org/

MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >=2.1
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

RUN_DEPENDS =	devel/ocaml-camomile
BUILD_DEPENDS =	${RUN_DEPENDS} sysutils/findlib
REGRESS_DEPENDS = devel/ounit

USE_GMAKE =	Yes

MAKE_ENV =	BATTERIES_NATIVE=${MODOCAML_NATIVE:S/Yes/yes/:S/No/no/} \
    		DOCROOT=${WRKINST}${LOCALBASE}/share/doc/ocaml-batteries \
		TERM=${TERM}

FAKE_FLAGS =	DESTDIR=${WRKINST}${LOCALBASE}/lib/ocaml/site-lib

ALL_TARGET =	all doc
REGRESS_TARGET =	test
INSTALL_TARGET =	install install-doc


pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib

post-install:
	${INSTALL_DATA} \
	    ${WRKSRC}/ocamlinit \
	    ${PREFIX}/share/doc/ocaml-batteries/


.include <bsd.port.mk>
