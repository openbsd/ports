# $OpenBSD: Makefile,v 1.4 2002/03/16 13:34:34 couderc Exp $

COMMENT=		"Ruby extension library for GTK Toolkit"

VERSION=		0.6
DISTNAME=		ruby-pcap-${VERSION}
CATEGORIES=		net
NEED_VERSION=		1.504

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

MAINTAINER=		Damien COUDERC <couderc@openbsd.org>

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
