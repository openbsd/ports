# $OpenBSD: Makefile,v 1.22 2012/07/12 10:11:38 edd Exp $

COMMENT=	Objective Caml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.2.7
REVISION =	1

MASTER_SITES=	http://www.ocaml-programming.de/packages/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.ocaml-programming.de/packages/

# MIT/X11
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB =	c curses m pthread

MODULES+=	lang/ocaml x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}

NO_REGRESS=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-with-toolbox -config ${PREFIX}/share/examples/findlib/findlib.conf

ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,all opt,:S,No,,}
FAKE_FLAGS=	prefix=${DESTDIR}

USE_GMAKE=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
