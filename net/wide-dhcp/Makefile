# OpenBSD makefile for: dhcp
# Version required:     1.4.0.1
# Date created:         29 April 1998
# Whom:                 Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/03 00:49:49 angelos Exp $
#

DISTNAME=       dhcp-1.4.0p1
PKGNAME=        wide-dhcp-1.4.0.1
CATEGORIES=     net
MASTER_SITES=   ftp://sh.wide.ad.jp/WIDE/free-ware/dhcp/
DISTFILES=	dhcp-1.4.0p1.tar.gz

MAINTAINER=     form@vs.itam.nsc.ru

MAKE_ENV=	OSTYPE=`uname`

MAN5=	dhcpdb.server.5 dhcpdb.pool.5 dhcpdb.relay.5
MAN8=	dhcpc.8 dhcps.8 relay.8 dhcpm.8

STARTUP_SCRIPT=	${PREFIX}/etc/rc.d/wide-dhcps.sh.sample

post-install:
.if !defined(NOPORTDOCS)
	@if [ ! -d ${PREFIX}/share/doc/dhcp ]; then \
		${MKDIR} ${PREFIX}/share/doc/dhcp; \
	fi
	@if [ ! -d ${PREFIX}/share/examples/dhcp ]; then \
		${MKDIR} ${PREFIX}/share/examples/dhcp; \
	fi
	@${CP} ${WRKSRC}/README ${PREFIX}/share/doc/dhcp/
	@${CP} ${WRKSRC}/README.jis ${PREFIX}/share/doc/dhcp/
	@${CP} ${WRKSRC}/db_sample/dhcpdb.pool ${PREFIX}/share/examples/dhcp/dhcpdb.pool.sample
	@${CP} ${WRKSRC}/db_sample/dhcpdb.relay ${PREFIX}/share/examples/dhcp/dhcpdb.relay.sample
	@${CP} ${WRKSRC}/db_sample/dhcpdb.server ${PREFIX}/share/examples/dhcp/dhcpdb.server.sample
	@${CP} ${WRKSRC}/db_sample/intro.dhcp ${PREFIX}/share/doc/dhcp/
	@${CP} ${WRKSRC}/db_sample/intro.dhcp.jis ${PREFIX}/share/doc/dhcp/
.endif
	@echo "***"
	@echo "*** Don't forget to enable kernel BPF support!"
	@echo "***"

.include <bsd.port.mk>
