# $OpenBSD: Makefile,v 1.3 1999/02/21 04:26:15 marc Exp $
#

DISTNAME=	cgiparse-0.8e
CATEGORIES=	www

NEED_VERSION=	1.64

MAINTAINER=	form@OpenBSD.ORG

MASTER_SITES=	http://resnet.uoregon.edu/~gurney_j/	\
		http://d182-89.uoregon.edu/~jmg/

.if $(MACHINE_ARCH) == "alpha"
BROKEN=		"Alpha architecture not yet supported"
.endif

.include <bsd.port.mk>
