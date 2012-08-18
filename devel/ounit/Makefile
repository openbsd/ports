# $OpenBSD: Makefile,v 1.3 2012/08/18 22:26:12 avsm Exp $

COMMENT =	unit test framework for OCaml
CATEGORIES =	devel

DISTNAME =	ounit-1.1.2

# The last url component (the number) changes every release, too.
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/886/

HOMEPAGE =	http://ounit.forge.ocamlcore.org/
MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >=2.1
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS +=	sysutils/findlib

CONFIGURE_STYLE =	oasis


.include <bsd.port.mk>
