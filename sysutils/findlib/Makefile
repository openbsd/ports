# $OpenBSD: Makefile,v 1.23 2012/08/18 22:24:50 avsm Exp $

COMMENT=	OCaml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.3.3
MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html

# MIT/X11
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB =	c curses m pthread
MODULES+=	lang/ocaml x11/tk
NO_REGRESS=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-with-toolbox \
		-sitelib "/usr/local/lib/ocaml" \
		-config ${PREFIX}/share/examples/findlib/findlib.conf

USE_GMAKE=	Yes
FAKE_FLAGS=	prefix=${DESTDIR}

ALL_TARGET=	all
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	opt
.endif

.include <bsd.port.mk>
