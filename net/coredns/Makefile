COMMENT=	fast and flexible DNS server/forwarder

MODGO_MODNAME=	github.com/coredns/coredns
MODGO_VERSION=	v1.11.0
DISTNAME=	coredns-${MODGO_VERSION}

CATEGORIES=	net sysutils

HOMEPAGE=	https://coredns.io/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache v2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

# XXX drop at next release
# https://github.com/coredns/coredns/commit/93139841965d8a4e6791dbe2e4d154991fc6a59b.patch
pre-configure:
	sed -i "s,github.com/quic-go/quic-go.*,github.com/quic-go/quic-go v0.37.4," \
		${WRKSRC}/go.mod
	sed -i -e "s,github.com/quic-go/quic-go v0.37.3 h1.*,github.com/quic-go/quic-go v0.37.4 h1:ke8B73yMCWGq9MfrCCAw0Uzdm7GaViC3i39dsIdDlH4=," \
		-e "s,github.com/quic-go/quic-go v0.37.3/go.mod h1.*,github.com/quic-go/quic-go v0.37.4/go.mod h1:YsbH1r4mSHPJcLF4k4zruUkLBqctEMBDR6VPvcYjIsU=," \
		${WRKSRC}/go.sum

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/coredns
	${INSTALL_DATA} ${FILESDIR}/Corefile ${PREFIX}/share/examples/coredns
.for s in 1 5 7
	${INSTALL_MAN} ${WRKSRC}/man/*.${s} ${PREFIX}/man/man${s}/
.endfor

.include "modules.inc"

.include <bsd.port.mk>
