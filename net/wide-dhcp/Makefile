# $OpenBSD: Makefile,v 1.11 2001/01/09 20:49:33 avsm Exp $

DISTNAME=       dhcp-1.4.0p3
PKGNAME=        wide-dhcp-1.4.0.3
CATEGORIES=     net
MASTER_SITES=   ftp://sh.wide.ad.jp/WIDE/free-ware/dhcp/
NEED_VERSION=	1.340

HOMEPAGE=	http://www.sfc.wide.ad.jp/~tomy/dhcp/index-e.html
MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAKE_FLAGS=	OSTYPE=OpenBSD CC=${CC} CFLAGS="${CFLAGS} -g -Wall -I. -I${WRKBUILD}/server" 
FAKE_FLAGS= 	${MAKE_FLAGS} SBIN=${WRKINST}${PREFIX}/sbin MAN=${WRKINST}${PREFIX}/man LIBEXEC=${WRKINST}${PREFIX}/libexec

DOCS=		README README.jis db_sample/intro.dhcp db_sample/intro.dhcp.jis
EXAMPLES=	dhcpdb.pool dhcpdb.relay dhcpdb.server

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wide-dhcp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wide-dhcp

.for a in ${DOCS}	
	${INSTALL_DATA} ${WRKSRC}/$a ${PREFIX}/share/doc/wide-dhcp
.endfor
.for i in ${EXAMPLES}
	${INSTALL_DATA}	${WRKSRC}/db_sample/$i ${PREFIX}/share/examples/wide-dhcp
.endfor

.include <bsd.port.mk>
