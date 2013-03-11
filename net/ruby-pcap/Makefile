# $OpenBSD: Makefile,v 1.44 2013/03/11 11:35:56 espie Exp $

COMMENT=		Ruby interface to LBL Packet Capture library

DISTNAME=               ruby-${PKGNAME}
PKGNAME=                pcap-0.6
REVISION=		21
CATEGORIES=		net

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

# GPL license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pcap 

FLAVORS=		ruby18
FLAVOR=			ruby18

MASTER_SITES=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby extconf

WRKDIST=		${WRKDIR}/pcap

DOC_DIR=		${MODRUBY_DOCDIR}/pcap/
EXAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/pcap/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
