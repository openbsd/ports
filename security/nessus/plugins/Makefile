# $OpenBSD: Makefile,v 1.4 2005/10/02 15:38:16 aanriot Exp $

COMMENT=        "plugins for Nessus"

DISTNAME=	nessus-plugins-GPL-${VERSION}
PKGNAME=        ${DISTNAME:S/-GPL//}p1

WANTLIB=        crypto pcap ssl util nessus hosts_gatherer

BUILD_DEPENDS=  ::security/nessus/core \
		::security/hydra \
		::security/nikto \
		::net/nmap

RUN_DEPENDS=    ${BUILD_DEPENDS}

.include <bsd.port.mk>
