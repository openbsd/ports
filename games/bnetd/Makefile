# $OpenBSD: Makefile,v 1.3 1999/04/01 00:05:44 brad Exp $

DISTNAME=	bnetd-0.4.1
CATEGORIES=	games
MASTER_SITES=	http://www.bnetd.org/files/

MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/${DISTNAME}/src/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bnbot ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bnclient ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bnpass ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bnetd ${PREFIX}/sbin
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/bnetd
	${INSTALL_MAN} ${WRKSRC}/../CHANGELOG ${PREFIX}/share/doc/bnetd
	${INSTALL_MAN} ${WRKSRC}/../README ${PREFIX}/share/doc/bnetd
	${INSTALL_MAN} ${WRKSRC}/../TODO ${PREFIX}/share/doc/bnetd
	${MKDIR} ${PREFIX}/lib/bnetd
	${MKDIR} ${PREFIX}/lib/bnetd/files
	${INSTALL_DATA} ${WRKSRC}/../conf/bnetd.conf ${PREFIX}/lib/bnetd/bnetd.conf.sample
	${INSTALL_DATA} ${WRKSRC}/../conf/bnetd_default_user ${PREFIX}/lib/bnetd/bnetd_default_user.sample
	${INSTALL_DATA} ${WRKSRC}/../files/ad0512b.pcx ${PREFIX}/lib/bnetd/files/ad0512b.pcx.sample
	@${ECHO} ""
	@${ECHO} "*** The latest sample config files"
	@${ECHO} "*** can be found in ${PREFIX}/lib/bnetd"
	@if [ -d /etc/bnetd ]; then \
	  ${ECHO} "*** Your config files have NOT been changed"; \
	 else \
	  ${MKDIR} /etc/bnetd; \
	  ${MKDIR} /etc/bnetd/files; \
	  ${MKDIR} /etc/bnetd/users; \
	  cp ${PREFIX}/lib/bnetd/bnetd.conf.sample /etc/bnetd/bnetd.conf; \
	  cp ${PREFIX}/lib/bnetd/bnetd_default_user.sample /etc/bnetd/bnetd_default_user; \
	  cp ${PREFIX}/lib/bnetd/files/ad0512b.pcx.sample /etc/bnetd/files/ad0512b.pcx; \
	  ${ECHO} "*** config files have been copied into /etc/bnetd"; \
	 fi
	@${ECHO} ""



.include <bsd.port.mk>
