COMMENT=		"Ruby extension library for GTK Toolkit"

VERSION=		0.6
DISTNAME=		ruby-pcap-${VERSION}
CATEGORIES=		net
NEED_VERSION=		1.504

HOMEPAGE=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/pcap-e.html

MAINTAINER=		Damien COUDERC <couderc.damien@wanadoo.fr>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER

MASTER_SITES=		http://www.goto.info.waseda.ac.jp/~fukusima/ruby/

RUN_DEPENDS=		ruby.1.66::lang/ruby
LIB_DEPENDS=		ruby.1.66::lang/ruby

NO_REGRESS=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	${PREFIX}/bin/ruby extconf.rb

WRKDIST=		${WRKDIR}/pcap

post-install:
	cp -R ${WRKSRC}/doc ${PREFIX}/share/doc/ruby-pcap

.include <bsd.port.mk>
