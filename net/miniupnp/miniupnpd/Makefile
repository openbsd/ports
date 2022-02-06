# $OpenBSD: Makefile,v 1.22 2022/02/06 15:04:45 bket Exp $

COMMENT=	UPnP IGD daemon

DISTNAME=	miniupnpd-2.3.0

# uses pledge()
WANTLIB += c crypto kvm ssl

MAKE_FLAGS=	INSTALLETCDIR=${PREFIX}/share/examples/miniupnpd

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE=	simple

post-install:
	${SUBST_DATA} ${WRKBUILD}/miniupnpd.8 \
			${PREFIX}/man/man8/miniupnpd.8

.include <bsd.port.mk>
