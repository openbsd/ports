# $OpenBSD: Makefile,v 1.12 2019/03/11 04:04:53 bket Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.5

WANTLIB += c

USE_GMAKE=	Yes
MAKE_FLAGS=	CC=${CC}

FAKE_FLAGS=	SBININSTALLDIR=${WRKINST}${TRUEPREFIX}/sbin \
		MANINSTALLDIR=${WRKINST}${TRUEPREFIX}/man

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1
	rm -r ${PREFIX}/etc

.include <bsd.port.mk>
