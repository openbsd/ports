# $OpenBSD: Makefile,v 1.2 1999/07/09 04:06:40 brad Exp $

DISTNAME=	camlp4
PKGNAME=	camlp4-2.02
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/Daniel.de_Rauglaudre/Camlp4/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	ocamlc:${PORTSDIR}/lang/ocaml

IS_INTERACTIVE=	yes
HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt

WRKSRC=		${WRKDIR}/camlp4-2-02

.include <bsd.port.mk>
