# $OpenBSD: Makefile,v 1.5 1999/04/09 04:11:52 brad Exp $

DISTNAME=       dhcp-1.4.0p3
PKGNAME=        wide-dhcp-1.4.0.3
CATEGORIES=     net
MASTER_SITES=   ftp://sh.wide.ad.jp/WIDE/free-ware/dhcp/
DISTFILES=	${DISTNAME}.tar.gz

MAINTAINER=	ports@openbsd.org

MAKE_ENV=	OSTYPE=`uname`

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
