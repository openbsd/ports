# $OpenBSD: Makefile,v 1.5 2006/02/09 11:19:08 aanriot Exp $

COMMENT=        "plugins for Nessus"

DISTNAME=	nessus-plugins-GPL-${VERSION}
PKGNAME=        ${DISTNAME:S/-GPL//}p2

WANTLIB=        crypto pcap ssl util nessus hosts_gatherer

BUILD_DEPENDS=  ::security/nessus/core \
		::security/hydra \
		::security/nikto \
		::net/nmap

RUN_DEPENDS=    ${BUILD_DEPENDS}

.include <bsd.port.mk>
