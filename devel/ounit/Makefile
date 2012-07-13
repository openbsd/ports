# $OpenBSD: Makefile,v 1.1.1.1 2012/07/13 08:36:03 edd Exp $

COMMENT =	unit test framework for OCaml
CATEGORIES =	devel

V =		1.1.1
# $N changes with every release, too.
N =		762
DISTNAME =	ounit-${V}

MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/${N}/

HOMEPAGE =	http://ounit.forge.ocamlcore.org/
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >=2.1
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	${RUN_DEPENDS} sysutils/findlib

CONFIGURE_STYLE = simple
CONFIGURE_ARGS = --destdir ${WRKINST}

MAKE_ENV =	TERM=${TERM}

REGRESS_TARGET = test


pre-configure:
	chmod a+x ${WRKSRC}/configure

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib

.include <bsd.port.mk>
