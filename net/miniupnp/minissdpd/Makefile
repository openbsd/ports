# $OpenBSD: Makefile,v 1.2 2012/02/16 22:27:36 ajacoutot Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.1.20120121

WANTLIB += c

FAKE_FLAGS=	SBININSTALLDIR=${WRKINST}${TRUEPREFIX}/sbin \
		MANINSTALLDIR=${WRKINST}${TRUEPREFIX}/man

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1

.include <bsd.port.mk>
