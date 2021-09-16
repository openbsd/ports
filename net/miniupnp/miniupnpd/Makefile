# $OpenBSD: Makefile,v 1.21 2021/09/16 08:54:27 sthen Exp $

COMMENT=	UPnP IGD daemon

DISTNAME=	miniupnpd-2.1
REVISION=	2

WANTLIB += c crypto kvm ssl

MAKE_FLAGS=	INSTALLETCDIR=${PREFIX}/share/examples/miniupnpd \
		INSTALLMANDIR=${PREFIX}/man/man8

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	genconfig.sh

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man8
	${SUBST_DATA} ${WRKBUILD}/miniupnpd.8 \
			${PREFIX}/man/man8/miniupnpd.8

.include <bsd.port.mk>
