# $OpenBSD: Makefile,v 1.7 2000/02/12 06:30:02 turan Exp $

DISTNAME=       dhcp-1.4.0p3
PKGNAME=        wide-dhcp-1.4.0.3
CATEGORIES=     net
MASTER_SITES=   ftp://sh.wide.ad.jp/WIDE/free-ware/dhcp/
DISTFILES=	${DISTNAME}.tar.gz

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MAKE_ENV=	OSTYPE=`uname`

post-install:
.if !defined(NOPORTDOCS)
	@if [ ! -d ${PREFIX}/share/doc/dhcp ]; then \
		mkdir -p ${PREFIX}/share/doc/dhcp; \
	fi
	@if [ ! -d ${PREFIX}/share/examples/dhcp ]; then \
		mkdir -p ${PREFIX}/share/examples/dhcp; \
	fi
	@cp ${WRKSRC}/README ${PREFIX}/share/doc/dhcp/
	@cp ${WRKSRC}/README.jis ${PREFIX}/share/doc/dhcp/
	@cp ${WRKSRC}/db_sample/dhcpdb.pool ${PREFIX}/share/examples/dhcp/dhcpdb.pool.sample
	@cp ${WRKSRC}/db_sample/dhcpdb.relay ${PREFIX}/share/examples/dhcp/dhcpdb.relay.sample
	@cp ${WRKSRC}/db_sample/dhcpdb.server ${PREFIX}/share/examples/dhcp/dhcpdb.server.sample
	@cp ${WRKSRC}/db_sample/intro.dhcp ${PREFIX}/share/doc/dhcp/
	@cp ${WRKSRC}/db_sample/intro.dhcp.jis ${PREFIX}/share/doc/dhcp/
.endif
	@echo "***"
	@echo "*** Don't forget to enable kernel BPF support!"
	@echo "***"

.include <bsd.port.mk>
