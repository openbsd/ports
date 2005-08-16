# $OpenBSD: Makefile,v 1.3 2005/08/16 09:49:53 espie Exp $

COMMENT=        "plugins for Nessus"

DISTNAME=	nessus-plugins-GPL-${VERSION}
PKGNAME=        ${DISTNAME:S/-GPL//}p0

WANTLIB=        crypto pcap ssl util nessus hosts_gatherer

BUILD_DEPENDS=  ::security/nessus/core \
		::security/hydra \
		::security/nikto \
		::net/nmap

RUN_DEPENDS=    ${BUILD_DEPENDS}

.include <bsd.port.mk>
