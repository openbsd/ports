# $OpenBSD: Makefile,v 1.27 2013/11/26 09:39:41 jca Exp $

COMMENT=	client and servers for the WIDE DHCP protocol
NOT_FOR_ARCHS=	${LP64_ARCHS}

DISTNAME=	dhcp-1.4.0p3
PKGNAME=	wide-dhcp-1.4.0.3
REVISION=	5
CATEGORIES=	net
MASTER_SITES=	ftp://sh.wide.ad.jp/WIDE/free-ware/dhcp/

HOMEPAGE=	http://www.sfc.wide.ad.jp/~tomy/dhcp/index-e.html

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c kvm

MAKE_FLAGS=	OSTYPE=OpenBSD \
		CC="${CC}" \
		CFLAGS="${CFLAGS} -g -Wall -I. -I${WRKBUILD}/server"
FAKE_FLAGS=	SBIN=${WRKINST}${PREFIX}/sbin \
		MAN=${WRKINST}${PREFIX}/man \
		LIBEXEC=${WRKINST}${PREFIX}/libexec

NO_TEST=	Yes

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
