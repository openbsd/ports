# $OpenBSD: Makefile,v 1.29 2014/09/02 09:24:44 chrisz Exp $

COMMENT=	OCaml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.5.2
REVISION=	0

MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html

# MIT/X11
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=		x11/tk

WANTLIB +=		c m
RUN_DEPENDS +=		lang/ocaml
BUILD_DEPENDS +=	lang/ocaml

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
