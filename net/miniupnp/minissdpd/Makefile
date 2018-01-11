# $OpenBSD: Makefile,v 1.9 2018/01/11 19:27:06 rpe Exp $

COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.3
REVISION=	0

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
