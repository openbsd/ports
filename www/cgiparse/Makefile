# $OpenBSD: Makefile,v 1.4 1999/04/09 04:11:59 brad Exp $

DISTNAME=	cgiparse-0.8e
CATEGORIES=	www

NEED_VERSION=	1.64

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	http://resnet.uoregon.edu/~gurney_j/	\
		http://d182-89.uoregon.edu/~jmg/

.if $(MACHINE_ARCH) == "alpha"
BROKEN=		"Alpha architecture not yet supported"
.endif

.include <bsd.port.mk>
