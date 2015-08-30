# $OpenBSD: Makefile,v 1.31 2015/08/30 15:43:47 avsm Exp $

COMMENT=	OCaml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.5.5

MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html

# MIT/X11
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=		x11/tk

WANTLIB +=		c m
RUN_DEPENDS +=		lang/ocaml lang/ocaml-camlp4
BUILD_DEPENDS +=	lang/ocaml lang/ocaml-camlp4

CONFIGURE_STYLE=simple
CONFIGURE_ARGS= -no-custom \
		-sitelib "/usr/local/lib/ocaml" \
		-config ${SYSCONFDIR}/findlib.conf

USE_GMAKE=	Yes
FAKE_FLAGS=	prefix=${DESTDIR}
NO_TEST=	Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
PKG_ARGS+=-Dnative=1
ALL_TARGET +=	all opt
.else
PKG_ARGS+=-Dnative=0
ALL_TARGET =	all
.endif

.if ${PROPERTIES:Mocaml_native_dynlink}
PKG_ARGS+=-Ddynlink=1
.else
PKG_ARGS+=-Ddynlink=0
.endif


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/findlib
	mv \
	  ${WRKINST}${SYSCONFDIR}/findlib.conf \
	  ${PREFIX}/share/examples/findlib/

.include <bsd.port.mk>
