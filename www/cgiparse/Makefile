# $OpenBSD: Makefile,v 1.10 2000/04/09 17:38:36 espie Exp $

DISTNAME=	cgiparse-0.8e
CATEGORIES=	www
NEED_VERSION=	1.64
FAKE=No


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
