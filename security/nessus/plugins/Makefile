# $OpenBSD: Makefile,v 1.8 2007/09/15 23:29:59 merdely Exp $

COMMENT=	plugins for Nessus
DISTNAME=	nessus-plugins-GPL-${V}
PKGNAME=	${DISTNAME:S/-GPL//}p0

WANTLIB=	crypto hosts_gatherer m nessus pcap ssl util

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/nessus/core	\
		::security/hydra	\
		::security/nikto	\
		::net/nmap

.include <bsd.port.mk>
