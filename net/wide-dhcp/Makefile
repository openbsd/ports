# $OpenBSD: Makefile,v 1.9 2000/04/09 17:37:39 espie Exp $

DISTNAME=       dhcp-1.4.0p3
PKGNAME=        wide-dhcp-1.4.0.3
CATEGORIES=     net
FAKE=No
MASTER_SITES=   ftp://sh.wide.ad.jp/WIDE/free-ware/dhcp/
DISTFILES=	${DISTNAME}.tar.gz

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
