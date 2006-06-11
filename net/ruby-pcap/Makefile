# $OpenBSD: Makefile,v 1.13 2006/06/11 18:57:11 sturm Exp $

COMMENT=		"Ruby interface to LBL Packet Capture library"

VERSION=		0.6
DISTNAME=		ruby-pcap-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap 

MASTER_SITES=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/

MODULES=		lang/ruby

LIB_DEPENDS=		ruby.1.84::lang/ruby

NO_REGRESS=	Yes

CONFIGURE_STYLE=	simple

WRKDIST=		${WRKDIR}/pcap

DOC_DIR=		${MODRUBY_DOCDIR}/ruby-pcap/
EXAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/ruby-pcap/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
