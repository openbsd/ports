# $OpenBSD: Makefile,v 1.10 2000/04/09 17:36:47 espie Exp $

BROKEN=		does not handle v2.04 of its dependency ocamlc.  Also need to make sure it works with a stdin of null

DISTNAME=	camlp4
PKGNAME=	camlp4-2.04
CATEGORIES=	lang
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/Daniel.de_Rauglaudre/Camlp4/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	ocamlc::lang/ocaml

IS_INTERACTIVE=	Yes
NO_PACKAGE=	interactive port
HAS_CONFIGURE=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	world bootstrap opt

WRKDIST=		${WRKDIR}/camlp4-2.04

.include <bsd.port.mk>
