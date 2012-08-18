# $OpenBSD: Makefile,v 1.9 2012/08/18 23:02:37 avsm Exp $

COMMENT=	simple XML parser/printer for OCaml
CATEGORIES=	textproc

V=		2.2
DISTNAME=	xml-light-${V}
PKGNAME=	ocaml-${DISTNAME}
REVISION =	4
EXTRACT_SUFX=	.zip
MASTER_SITES=	http://tech.motion-twin.com/zip/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://tech.motion-twin.com/xmllight.html

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
WRKDIST=	${WRKDIR}/xml-light
USE_GMAKE=	Yes
NO_REGRESS= 	Yes

ALL_TARGET=	all
INSTALL_TARGET=	install

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
INSTALL_TARGET +=	installopt
.endif


.include <bsd.port.mk>
