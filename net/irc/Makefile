# $OpenBSD: Makefile,v 1.25 2004/08/03 18:24:40 naddy Exp $
# $FreeBSD: Makefile,v 1.19 1998/12/09 20:15:29 billf Exp $

COMMENT=	"internet relay chat (irc) server"

DISTNAME=       irc2.10.3p1
PKGNAME=        irc-2.10.3p1p1
CATEGORIES=	net

MASTER_SITES=   ftp://ftp.irc.org/irc/server/Old/ \
                ftp://ftp.ntua.gr/pub/net/irc/server/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFDIR=	${SYSCONFDIR}/ircd
CONFIGURE_STYLE= gnu old
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support
CONFIGURE_ARGS=	--logdir="/var/log/ircd" \
		--localstatedir="/var/run" \
		--sysconfdir=${CONFDIR}

FLAVORS=	ipv6
FLAVOR?=	

.if ${FLAVOR:L:Mipv6}
CONFIGURE_ARGS+=	--enable-ip6
.endif

# syslog facility to use for logging
SYSLOG_FACILITY=	LOG_LOCAL5

ALL_TARGET=	server

WRKBUILD=	${WRKSRC}/support

SUBST_VARS=	CONFDIR

post-patch:
	@sed -e s#!!SYSLOG_FACILITY!!#$(SYSLOG_FACILITY)#g \
		$(WRKSRC)/support/config.h.dist > $(WRKSRC)/support/config.h.dist.new
	@mv $(WRKSRC)/support/config.h.dist.new $(WRKSRC)/support/config.h

NO_REGRESS=	Yes

do-install:	
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ircd
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} \
		iauth chkconf ircdwatch ircd-mkpasswd ircd \
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
