# $OpenBSD: Makefile,v 1.1.1.1 2012/01/13 09:22:23 ajacoutot Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.1.20111007

WANTLIB += c

FAKE_FLAGS=	SBININSTALLDIR=${WRKINST}${TRUEPREFIX}/sbin

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1

.include <bsd.port.mk>
