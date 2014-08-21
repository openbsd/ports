# $OpenBSD: Makefile,v 1.27 2014/08/21 20:54:04 chrisz Exp $

COMMENT=	OCaml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.3.3
REVISION=	2
MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html

# MIT/X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	c m
MODULES+=	lang/ocaml x11/tk
BUILD_DEPENDS +=lang/ocaml,-labltk
NO_TEST=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-with-toolbox \
		-no-custom \
		-sitelib "/usr/local/lib/ocaml" \
		-config ${SYSCONFDIR}/findlib.conf

USE_GMAKE=	Yes
FAKE_FLAGS=	prefix=${DESTDIR}

ALL_TARGET=	all
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	opt
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/findlib
	mv \
	  ${WRKINST}${SYSCONFDIR}/findlib.conf \
	  ${PREFIX}/share/examples/findlib/

.include <bsd.port.mk>
