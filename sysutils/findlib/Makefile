# $OpenBSD: Makefile,v 1.6 2006/05/29 03:46:29 avsm Exp $

COMMENT=	"Objective Caml package manager"
CATEGORIES=	sysutils
DISTNAME=	findlib-1.1.2pl1
PKGNAME=	${DISTNAME}
MASTER_SITES=	http://www.ocaml-programming.de/packages/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.ocaml-programming.de/packages/

# MIT/X11
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		X11 c curses m pthread tcl84

MODULES=	lang/ocaml
LIB_DEPENDS=	tk84.1:tk-8.4.*:x11/tk/8.4
NO_REGRESS=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-with-toolbox -config ${PREFIX}/share/examples/findlib/findlib.conf

ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,all opt,:S,No,,}
USE_GMAKE=	Yes

.include <bsd.port.mk>
