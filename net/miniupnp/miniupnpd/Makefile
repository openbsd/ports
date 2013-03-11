# $OpenBSD: Makefile,v 1.5 2013/03/11 19:51:26 sthen Exp $

COMMENT=	UPnP IGD client lightweight library

DISTNAME=	miniupnpd-1.7
REVISION=	0

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
