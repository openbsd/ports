# $OpenBSD: Makefile,v 1.5 1999/05/06 02:15:12 brad Exp $

DISTNAME=	bnetd-0.4.1
CATEGORIES=	games
MASTER_SITES=	http://www.bnetd.org/files/

BROKEN=		"Newer version available"

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
	${MKDIR} ${PREFIX}/lib/bnetd/users
	${INSTALL_DATA} ${WRKSRC}/../conf/bnetd.conf ${PREFIX}/lib/bnetd/bnetd.conf.sample
	${INSTALL_DATA} ${WRKSRC}/../conf/bnetd_default_user ${PREFIX}/lib/bnetd/bnetd_default_user.sample
	${INSTALL_DATA} ${WRKSRC}/../files/ad0512b.pcx ${PREFIX}/lib/bnetd/files/ad0512b.pcx.sample
	@${ECHO} ""
	@${ECHO} "*** The latest sample config files"
	@${ECHO} "*** can be found in ${PREFIX}/lib/bnetd"
	@if [ ! -d /etc/bnetd ]; then \
	  ${MKDIR} /etc/bnetd; \
	fi
	@if [ ! -d /etc/bnetd ]; then \
	  ${MKDIR} /etc/bnetd/files; \
	fi
	@if [ ! -d /etc/bnetd ]; then \
	  ${MKDIR} /etc/bnetd/users; \
	fi
	@if [ ! -f /etc/bnetd/bnetd.conf ]; then \
	  cp ${PREFIX}/lib/bnetd/bnetd.conf.sample /etc/bnetd/bnetd.conf; \
	  ${ECHO} ""; \
	  ${ECHO} "*** bnetd.conf has been copied into /etc/bnetd"; \
	 else \
	  ${ECHO} ""; \
	  ${ECHO} "*** Your /etc/bnetd/bnetd.conf has NOT been changed"; \

	fi
	@if [ ! -f /etc/bnetd/bnetd_default_user ]; then \
	  cp ${PREFIX}/lib/bnetd/bnetd_default_user.sample /etc/bnetd/bnetd_default_user; \
	  ${ECHO} ""; \
	  ${ECHO} "*** bnetd_default_user has been copied into /etc/bnetd"; \
	 else \
	  ${ECHO} ""; \
	  ${ECHO} "*** Your /etc/bnetd/bnetd_default_user has NOT been changed"; \
	fi
	@if [ ! -f /etc/bnetd/files/ad0512b.pcx ]; then \
	  cp ${PREFIX}/lib/bnetd/files/ad0512b.pcx.sample /etc/bnetd/files/ad0512b.pcx; \
	  ${ECHO} ""; \
	  ${ECHO} "*** ad0512b.pcx has been copied into /etc/bnetd/files"; \
	 else \
	  ${ECHO} ""; \
	  ${ECHO} "*** Your /etc/bnetd/files/ad0512b.pcx has NOT been changed"; \
	fi
	@${ECHO} ""

.include <bsd.port.mk>
