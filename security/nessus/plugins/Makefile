# $OpenBSD: Makefile,v 1.7 2007/04/03 13:55:59 aanriot Exp $

COMMENT=	"plugins for Nessus"
DISTNAME=	nessus-plugins-GPL-${V}
PKGNAME=	${DISTNAME:S/-GPL//}p0

WANTLIB=	crypto hosts_gatherer m nessus pcap ssl util

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/nessus/core	\
		::security/hydra	\
		::security/nikto	\
		::net/nmap

.include <bsd.port.mk>
