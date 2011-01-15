# $OpenBSD: Makefile,v 1.38 2011/01/15 01:09:43 naddy Exp $

COMMENT=		Ruby interface to LBL Packet Capture library

DISTNAME=               ruby-${PKGNAME}
PKGNAME=                pcap-0.6
REVISION=		17
CATEGORIES=		net

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		pcap 

MASTER_SITES=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/

MODULES=		lang/ruby

NO_REGRESS=		Yes

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
