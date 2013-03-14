# $OpenBSD: Makefile,v 1.5 2013/03/14 20:01:13 ajacoutot Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.2
REVISION=	0

WANTLIB += c

FAKE_FLAGS=	SBININSTALLDIR=${WRKINST}${TRUEPREFIX}/sbin \
		MANINSTALLDIR=${WRKINST}${TRUEPREFIX}/man

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1

.include <bsd.port.mk>
