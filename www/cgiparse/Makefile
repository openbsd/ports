# $OpenBSD: Makefile,v 1.5 1999/10/31 06:49:00 turan Exp $

BROKEN=		bad packing lists, man/man3/cgigetvalue.3, man/man3/cgiclose.3, man/man3/cginewquerystr.3

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
