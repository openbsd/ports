# $OpenBSD: Makefile,v 1.2 2005/08/02 12:37:28 aanriot Exp $

COMMENT=        "plugins for Nessus"

DISTNAME=	nessus-plugins-GPL-${VERSION}
PKGNAME=        ${DISTNAME:S/-GPL//}

WANTLIB=        crypto pcap ssl util nessus hosts_gatherer

BUILD_DEPENDS=  ::security/nessus/core \
		::security/hydra \
		::security/nikto \
		::net/nmap

RUN_DEPENDS=    ${BUILD_DEPENDS}

.include <bsd.port.mk>
