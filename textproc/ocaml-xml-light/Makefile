# $OpenBSD: Makefile,v 1.13 2014/08/22 22:21:53 kili Exp $

COMMENT=	simple XML parser/printer for OCaml
CATEGORIES=	textproc

V=		2.2
DISTNAME=	xml-light-${V}
PKGNAME=	ocaml-${DISTNAME}
REVISION =	7
EXTRACT_SUFX=	.zip
MASTER_SITES=	http://tech.motion-twin.com/zip/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://tech.motion-twin.com/xmllight.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml
WRKDIST=	${WRKDIR}/xml-light
USE_GMAKE=	Yes
NO_TEST= 	Yes

ALL_TARGET=	all
INSTALL_TARGET=	install

post-install:
	chmod a+r ${PREFIX}/lib/ocaml/*mli

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
INSTALL_TARGET +=	installopt
.endif



.include <bsd.port.mk>
