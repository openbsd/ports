# $OpenBSD: Makefile,v 1.2 2012/07/13 09:27:25 edd Exp $

COMMENT =	unit test framework for OCaml
CATEGORIES =	devel

# $N changes with every release, too.
N =		762
DISTNAME =	ounit-1.1.1

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
