# $OpenBSD: Makefile,v 1.10 2018/04/28 14:46:44 ajacoutot Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.4

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
