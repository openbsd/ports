# $OpenBSD: Makefile,v 1.3 2012/05/05 14:26:32 merdely Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.1.20120121
REVISION=	0

WANTLIB += c

FAKE_FLAGS=	SBININSTALLDIR=${WRKINST}${TRUEPREFIX}/sbin \
		MANINSTALLDIR=${WRKINST}${TRUEPREFIX}/man

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1

.include <bsd.port.mk>
