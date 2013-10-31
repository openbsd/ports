# $OpenBSD: Makefile,v 1.7 2013/10/31 21:12:12 sthen Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.2
REVISION=	2

WANTLIB += c

FAKE_FLAGS=	SBININSTALLDIR=${WRKINST}${TRUEPREFIX}/sbin \
		MANINSTALLDIR=${WRKINST}${TRUEPREFIX}/man

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1

.include <bsd.port.mk>
