# $OpenBSD: Makefile,v 1.9 2010/10/18 21:41:45 espie Exp $

COMMENT=	plugins for Nessus
DISTNAME=	nessus-plugins-GPL-${V}
PKGNAME=	${DISTNAME:S/-GPL//}p0

WANTLIB=	crypto hosts_gatherer m nessus pcap ssl util

USE_GROFF =	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/nessus/core	\
		::security/hydra	\
		::security/nikto	\
		::net/nmap

.include <bsd.port.mk>
