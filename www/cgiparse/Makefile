# $OpenBSD: Makefile,v 1.6 1999/11/17 09:17:34 kevlo Exp $

DISTNAME=	cgiparse-0.8e
CATEGORIES=	www

NEED_VERSION=	1.64

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	http://resnet.uoregon.edu/~gurney_j/	\
		http://d182-89.uoregon.edu/~jmg/

post-install:
		${INSTALL_MAN} ${WRKSRC}/cgiclose.3 ${PREFIX}/man/man3
		${INSTALL_MAN} ${WRKSRC}/cgigetvalue.3 ${PREFIX}/man/man3
		${INSTALL_MAN} ${WRKSRC}/cginewquerystr.3 ${PREFIX}/man/man3

.if $(MACHINE_ARCH) == "alpha"
BROKEN=		"Alpha architecture not yet supported"
.endif

.include <bsd.port.mk>
