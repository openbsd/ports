# OpenBSD makefile for:	Caml P4
# Version required:	2.01
# Date created:		February 12, 1999
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/02/13 04:51:49 angelos Exp $
#

DISTNAME=	camlp4
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/Daniel.de_Rauglaudre/Camlp4/
DISTFILES=	${DISTNAME}.tar.gz

MAINTAINER=	angelos@openbsd.org

IS_INTERACTIVE=	yes
BUILD_DEPENDS=	ocamlc:${PORTSDIR}/lang/ocaml
WRKSRC=		${WRKDIR}/camlp4-2-01
HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt

.include <bsd.port.mk>
