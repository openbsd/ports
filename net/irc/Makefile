# $OpenBSD: Makefile,v 1.42 2019/07/12 20:48:29 sthen Exp $

COMMENT=	internet relay chat (irc) server

DISTNAME=       irc2.10.3p1
PKGNAME=        ${DISTNAME:S/irc/irc-/:S/p/./}
EPOCH=		0
CATEGORIES=	net
REVISION=	0

MASTER_SITES=   http://www.irc.org/ftp/irc/server/Old/irc2.10/ \
                ftp://ftp.ntua.gr/pub/net/irc/server/
EXTRACT_SUFX=	.tgz

# GPLv1+ (yes, really!)
PERMIT_PACKAGE=	Yes

WANTLIB += c m z

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/run

CONFDIR=	${SYSCONFDIR}/ircd
CONFIGURE_STYLE= gnu old
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support
CONFIGURE_ARGS=	--logdir="/var/log/ircd" \
		--sysconfdir=${CONFDIR}

FLAVORS=	ipv6 hub
FLAVOR?=	

.if ${FLAVOR:Mipv6}
CONFIGURE_ARGS+=	--enable-ip6
.endif

# syslog facility to use for logging
SYSLOG_FACILITY=	LOG_LOCAL5

ALL_TARGET=	server

WRKBUILD=	${WRKSRC}/support

SUBST_VARS=	CONFDIR

pre-configure:
.if ${FLAVOR:Mhub}
	@perl -pi -e 's,^/\* #define\tHUB \*/,#define\tHUB,g' ${WRKSRC}/support/config.h.dist
.endif
	@cp $(WRKSRC)/support/config.h.dist $(WRKSRC)/support/config.h

NO_TEST=	Yes

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
