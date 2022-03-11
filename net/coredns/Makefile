COMMENT=	fast and flexible DNS server/forwarder

MODGO_MODNAME=	github.com/coredns/coredns
MODGO_VERSION=	v1.8.7
DISTNAME=	coredns-${MODGO_VERSION}

CATEGORIES=	net sysutils

HOMEPAGE=	https://coredns.io/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>
# Apache v2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/coredns
	${INSTALL_DATA} ${FILESDIR}/Corefile ${PREFIX}/share/examples/coredns
.for s in 1 5 7
	${INSTALL_MAN} ${WRKSRC}/man/*.${s} ${PREFIX}/man/man${s}/
.endfor

.include "modules.inc"

.include <bsd.port.mk>
