# $OpenBSD: Makefile,v 1.25 2013/01/03 14:30:57 chrisz Exp $

COMMENT=	OCaml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.3.3
REVISION=	1
MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html

# MIT/X11
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB =	c m
MODULES+=	lang/ocaml x11/tk
NO_REGRESS=	Yes

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
