# $OpenBSD: Makefile,v 1.17 2001/01/28 00:47:17 brad Exp $
# $FreeBSD: Makefile,v 1.19 1998/12/09 20:15:29 billf Exp $

DISTNAME=       irc2.10.3p1
PKGNAME=        irc-2.10.3p1
CATEGORIES=	net
NEED_VERSION=	1.351
MASTER_SITES=   ftp://ftp.irc.org/irc/server/ \
                ftp://ftp.ntua.gr/pub/net/irc/server/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/ircd
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--logdir="/var/log/ircd" \
		--localstatedir="/var/run"

# syslog facility to use for logging
SYSLOG_FACILITY=	LOG_LOCAL5

ALL_TARGET=	server

WRKBUILD=	${WRKSRC}/support

post-patch:
	@sed -e s#!!SYSLOG_FACILITY!!#$(SYSLOG_FACILITY)#g \
		$(WRKSRC)/support/config.h.dist > $(WRKSRC)/support/config.h.dist.new
	@mv $(WRKSRC)/support/config.h.dist.new $(WRKSRC)/support/config.h

do-install:	
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ircd
	${INSTALL_PROGRAM} ${WRKSRC}/support/ircd ${PREFIX}/libexec/ircd
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} \
		iauth chkconf ircdwatch ircd-mkpasswd \
			${PREFIX}/sbin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} ircd.8 iauth.8 \
		${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/doc/iauth.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/support/iauth.conf \
		${PREFIX}/share/examples/ircd/iauth.conf-sample
	${INSTALL_DATA} ${WRKSRC}/support/iauth.conf \
		${PREFIX}/share/examples/ircd/ircd.m4
	${INSTALL_DATA} ${WRKSRC}/doc/example.conf \
		${PREFIX}/share/examples/ircd/ircd.conf-sample

.include <bsd.port.mk>
