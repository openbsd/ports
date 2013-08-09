# $OpenBSD: Makefile,v 1.6 2013/08/09 14:31:53 ajacoutot Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.2
REVISION=	1

WANTLIB += c

FAKE_FLAGS=	SBININSTALLDIR=${WRKINST}${TRUEPREFIX}/sbin \
		MANINSTALLDIR=${WRKINST}${TRUEPREFIX}/man

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1

.include <bsd.port.mk>
