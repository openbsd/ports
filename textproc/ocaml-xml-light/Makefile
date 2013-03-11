# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:42 espie Exp $

COMMENT=	simple XML parser/printer for OCaml
CATEGORIES=	textproc

V=		2.2
DISTNAME=	xml-light-${V}
PKGNAME=	ocaml-${DISTNAME}
REVISION =	5
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

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
INSTALL_TARGET +=	installopt
.endif


.include <bsd.port.mk>
