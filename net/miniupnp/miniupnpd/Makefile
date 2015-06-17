# $OpenBSD: Makefile,v 1.11 2015/06/17 09:01:14 ajacoutot Exp $

COMMENT=	UPnP IGD daemon

DISTNAME=	miniupnpd-1.8
REVISION=	2

WANTLIB += c kvm

MAKE_FLAGS=	INSTALLETCDIR=${PREFIX}/share/examples/miniupnpd \
		INSTALLMANDIR=${PREFIX}/man/man8

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man8
	${SUBST_DATA} ${WRKBUILD}/miniupnpd.8 \
			${PREFIX}/man/man8/miniupnpd.8

.include <bsd.port.mk>
