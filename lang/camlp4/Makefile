# $OpenBSD: Makefile,v 1.4 1999/11/22 02:54:29 angelos Exp $

DISTNAME=	camlp4
PKGNAME=	camlp4-2.03
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/Daniel.de_Rauglaudre/Camlp4/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	ocamlc:${PORTSDIR}/lang/ocaml

IS_INTERACTIVE=	yes
NO_PACKAGE=	interactive port
HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt

WRKSRC=		${WRKDIR}/camlp4-2.03

.include <bsd.port.mk>
