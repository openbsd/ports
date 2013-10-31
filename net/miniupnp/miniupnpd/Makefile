# $OpenBSD: Makefile,v 1.8 2013/10/31 21:12:13 sthen Exp $

COMMENT=	UPnP IGD client lightweight library

DISTNAME=	miniupnpd-1.8
REVISION=	0

WANTLIB += c kvm

MAKE_FLAGS=	INSTALLETCDIR=${PREFIX}/share/examples/miniupnpd \
		INSTALLMANDIR=${PREFIX}/man/man8

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man8
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m ${MANMODE} \
		-c ${WRKBUILD}/miniupnpd.8 \
			${PREFIX}/man/man8/miniupnpd.8

.include <bsd.port.mk>
