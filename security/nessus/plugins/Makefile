# $OpenBSD: Makefile,v 1.10 2010/11/20 17:22:44 espie Exp $

COMMENT=	plugins for Nessus
DISTNAME=	nessus-plugins-GPL-${V}
PKGNAME=	${DISTNAME:S/-GPL//}
REVISION =	0

WANTLIB=	crypto hosts_gatherer m nessus pcap ssl util

USE_GROFF =	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/nessus/core	\
		security/hydra	\
		security/nikto	\
		net/nmap

.include <bsd.port.mk>
