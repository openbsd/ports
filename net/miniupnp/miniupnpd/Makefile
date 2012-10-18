# $OpenBSD: Makefile,v 1.4 2012/10/18 14:56:55 dcoppa Exp $

COMMENT=	UPnP IGD client lightweight library

DISTNAME=	miniupnpd-1.7

WANTLIB += c kvm

MAKE_FLAGS=	INSTALLETCDIR=${PREFIX}/share/examples/miniupnpd \
		INSTALLMANDIR=${PREFIX}/share/man/man1

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/miniupnpd.1

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/miniupnpd.1 \
		${PREFIX}/man/man1/miniupnpd.1

.include <bsd.port.mk>
