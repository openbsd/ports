# $OpenBSD: Makefile,v 1.1.1.1 1999/03/30 02:10:44 brad Exp $

DISTNAME=	bnetd-0.4
CATEGORIES=	games
MASTER_SITES=	http://www.bnetd.org/files/

MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/bnetd-0.4/src/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bnbot ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bnclient ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bnpass ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bnetd ${PREFIX}/sbin
	${INSTALL_DATA_DIR} /etc/bnetd
	${INSTALL_DATA_DIR} /etc/bnetd/files
	${INSTALL_DATA_DIR} /etc/bnetd/users
	${INSTALL_DATA} ${WRKSRC}/../conf/bnetd.conf /etc/bnetd
	${INSTALL_DATA} ${WRKSRC}/../conf/bnetd_default_user /etc/bnetd
	${INSTALL_DATA} ${WRKSRC}/../files/ad0512b.pcx /etc/bnetd/files
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/bnetd
	${INSTALL_MAN} ${WRKSRC}/../CHANGELOG ${PREFIX}/share/doc/bnetd
	${INSTALL_MAN} ${WRKSR}/../README ${PREFIX}/share/doc/bnetd

post-install:
	@${ECHO} "***"
	@${ECHO} "*** Finished installing bnetd."
	@${ECHO} "*** Please take a look at the sample bnetd config file /etc/bnetd/bnetd.conf
	@${ECHO} "*** and make any necessary modifications before running."   
	@${ECHO} "***"

.include <bsd.port.mk>
