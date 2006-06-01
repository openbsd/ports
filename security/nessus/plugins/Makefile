# $OpenBSD: Makefile,v 1.6 2006/06/01 05:16:32 aanriot Exp $

COMMENT=	"plugins for Nessus"
DISTNAME=	nessus-plugins-GPL-${V}
PKGNAME=	${DISTNAME:S/-GPL//}

WANTLIB=	crypto hosts_gatherer m nessus pcap ssl util

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/nessus/core	\
		::security/hydra	\
		::security/nikto	\
		::net/nmap

.include <bsd.port.mk>
