# $OpenBSD: Makefile,v 1.7 2002/06/29 13:59:24 couderc Exp $

COMMENT=		"Ruby interface to LBL Packet Capture library"

VERSION=		0.6
DISTNAME=		ruby-pcap-${VERSION}
CATEGORIES=		net
NEED_VERSION=		1.531

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER

MASTER_SITES=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/

MODULES=ruby

NO_REGRESS=	Yes

CONFIGURE_STYLE=	simple

WRKDIST=		${WRKDIR}/pcap

INST_DIR=		${PREFIX}/share/ruby-pcap

post-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	cp -R ${WRKSRC}/doc ${INST_DIR}
	cp -R ${WRKSRC}/examples ${INST_DIR}

.include <bsd.port.mk>
