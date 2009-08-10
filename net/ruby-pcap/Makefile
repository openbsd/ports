# $OpenBSD: Makefile,v 1.28 2009/08/10 16:40:15 msf Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to LBL Packet Capture library

VERSION=		0.6
DISTNAME=		ruby-pcap-${VERSION}
PKGNAME=		${DISTNAME}p10
CATEGORIES=		net

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap 

MASTER_SITES=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/

MODULES=		lang/ruby

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}

NO_REGRESS=	Yes

CONFIGURE_STYLE=	ruby extconf

WRKDIST=		${WRKDIR}/pcap

DOC_DIR=		${MODRUBY_DOCDIR}/ruby-pcap/
EXAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/ruby-pcap/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
