# $OpenBSD: Makefile,v 1.6 1999/03/10 17:45:51 brad Exp $
# $FreeBSD: Makefile,v 1.19 1998/12/09 20:15:29 billf Exp $

DISTNAME=       irc2.10.1
PKGNAME=        irc-2.10.1
CATEGORIES=	net

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=   http://www.leo.org/pub/comp/general/networking/irc/daemon/ \
                ftp://ftp.irc.org/irc/server/ \
                ftp://tau.ac.il/pub/unix/irc/server/ \
                ftp://ftp.ut.ee/pub/unix/irc/server/ \
                ftp://ftp.ntua.gr/pub/net/irc/server/

# the NOTE command is disabled by default
# ENABLE_NOTE=yes

# Syslog-Facility to use for logging
# default:
SYSLOG_FACILITY=LOG_LOCAL5

EXTRACT_SUFX=	.tgz
SCRIPTS_ENV=    SYSLOG_FACILITY="${SYSLOG_FACILITY}"

MAN1=           irc.1
MAN5=           iauth.conf.5
MAN8=           ircd.8 iauth.8 ircdwatch.8

GNU_CONFIGURE=	yes

post-patch:
	${SED} -e s,!!SYSLOG_FACILITY!!,$(SYSLOG_FACILITY), $(WRKSRC)/support/config.h.dist > $(WRKSRC)/support/config.h.dist.new
	${MV} $(WRKSRC)/support/config.h.dist.new $(WRKSRC)/support/config.h.dist

do-build:
	@(cd ${WRKSRC}/`${WRKSRC}/support/config.guess` && \
	 ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${ALL_TARGET})

do-install:
	@(cd ${WRKSRC}/`${WRKSRC}/support/config.guess` && \
	 ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${INSTALL_TARGET})

pre-install:
	@${MKDIR} ${PREFIX}/lib/ircd
	@${TOUCH} ${PREFIX}/lib/ircd/users ${PREFIX}/lib/ircd/opers \
		${PREFIX}/lib/ircd/rejects

.include <bsd.port.mk>
