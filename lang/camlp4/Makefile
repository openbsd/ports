# $OpenBSD: Makefile,v 1.7 2000/02/25 09:51:07 turan Exp $

BROKEN=		does not handle v2.04 of its dependency ocamlc.  Also need to make sure it works with a stdin of null

DISTNAME=	camlp4
PKGNAME=	camlp4-2.04
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/Daniel.de_Rauglaudre/Camlp4/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	ocamlc:${PORTSDIR}/lang/ocaml

IS_INTERACTIVE=	yes
NO_PACKAGE=	interactive port
HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt

WRKDIST=		${WRKDIR}/camlp4-2.04

.include <bsd.port.mk>
