# $OpenBSD: Makefile,v 1.6 2002/05/08 17:07:48 espie Exp $

COMMENT=		"Ruby interface to LBL Packet Capture library"

VERSION=		0.6
DISTNAME=		ruby-pcap-${VERSION}
CATEGORIES=		net
NEED_VERSION=		1.504

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER

MASTER_SITES=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/

RUN_DEPENDS=		::lang/ruby
LIB_DEPENDS=		ruby.1.66::lang/ruby

NO_REGRESS=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	${LOCALBASE}/bin/ruby extconf.rb

WRKDIST=		${WRKDIR}/pcap

post-install:
	cp -R ${WRKSRC}/doc ${PREFIX}/share/doc/ruby-pcap

.include <bsd.port.mk>
