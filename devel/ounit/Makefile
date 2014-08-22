# $OpenBSD: Makefile,v 1.6 2014/08/22 22:49:07 kili Exp $

COMMENT =	unit test framework for OCaml
CATEGORIES =	devel

DISTNAME =	ounit-1.1.2
REVISION=	1

# The last url component (the number) changes every release, too.
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/886/

HOMEPAGE =	http://ounit.forge.ocamlcore.org/
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >=2.1
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ocaml

BUILD_DEPENDS +=	sysutils/findlib

CONFIGURE_STYLE =	oasis


.include <bsd.port.mk>
