# $OpenBSD: Makefile,v 1.12 2019/03/04 12:51:14 chrisz Exp $

COMMENT =	unit test framework for OCaml
CATEGORIES =	devel

DISTNAME =	ounit-2.0.8

# The last url component (the number) changes every release, too.
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/1749/

HOMEPAGE =	http://ounit.forge.ocamlcore.org/
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL >=2.1
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ocaml

BUILD_DEPENDS +=	sysutils/findlib \
			devel/ocaml-ocamlbuild

CONFIGURE_STYLE =	oasis


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ounit
	${INSTALL_DATA} \
		${WRKSRC}/examples/* \
		${PREFIX}/share/examples/ounit/

.include <bsd.port.mk>
