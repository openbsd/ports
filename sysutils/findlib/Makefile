# $OpenBSD: Makefile,v 1.20 2011/12/21 21:32:37 avsm Exp $

COMMENT=	Objective Caml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.2.7
MASTER_SITES=	http://www.ocaml-programming.de/packages/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.ocaml-programming.de/packages/

# MIT/X11
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		X11 c curses m pthread pthread-stubs tcl85 xcb

MODULES+=	lang/ocaml x11/tk
LIB_DEPENDS =	${MODTK_LIB_DEPENDS}
WANTLIB +=	${MODTK_WANTLIB}
NO_REGRESS=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-with-toolbox -config ${PREFIX}/share/examples/findlib/findlib.conf

ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,all opt,:S,No,,}
FAKE_FLAGS=	prefix=${DESTDIR}

USE_GMAKE=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
