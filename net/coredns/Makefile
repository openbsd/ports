# $OpenBSD: Makefile,v 1.1.1.1 2020/05/16 12:42:14 ajacoutot Exp $

COMMENT=		fast and flexible DNS server/forwarder

GH_ACCOUNT=		coredns
GH_TAGNAME=		v1.6.9
GH_PROJECT=		coredns

CATEGORIES=		net sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache v2.0
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

MASTER_SITES=		https://distfiles.bsdfrog.org/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/coredns
	${INSTALL_DATA} ${FILESDIR}/Corefile ${PREFIX}/share/examples/coredns
.for s in 1 5 7
	${INSTALL_MAN} ${WRKSRC}/man/*.${s} ${PREFIX}/man/man${s}/
.endfor

.include <bsd.port.mk>
