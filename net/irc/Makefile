# $OpenBSD: Makefile,v 1.13 2000/03/24 22:11:51 espie Exp $
# $FreeBSD: Makefile,v 1.19 1998/12/09 20:15:29 billf Exp $

DISTNAME=       irc2.10.1
PKGNAME=        irc-2.10.1
CATEGORIES=	net
NEED_VERSION=	1.210

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
	sed -e s,!!SYSLOG_FACILITY!!,$(SYSLOG_FACILITY), $(WRKSRC)/support/config.h.dist > $(WRKSRC)/support/config.h.dist.new
	mv $(WRKSRC)/support/config.h.dist.new $(WRKSRC)/support/config.h.dist

do-build:
	@(cd ${WRKSRC}/`${WRKSRC}/support/config.guess` && \
	 ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET})

do-install:
	@(cd ${WRKSRC}/`${WRKSRC}/support/config.guess` && \
	 ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ${INSTALL_TARGET})

pre-install:
	@mkdir -p ${PREFIX}/lib/ircd
	@touch ${PREFIX}/lib/ircd/users ${PREFIX}/lib/ircd/opers \
		${PREFIX}/lib/ircd/rejects

.include <bsd.port.mk>
