# $OpenBSD: Makefile,v 1.15 2007/03/24 09:44:15 steven Exp $

COMMENT=	"search mailboxes for a particular email"

DISTNAME=	grepmail-5.3033
CATEGORIES=	mail perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://grepmail.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grepmail/}

RUN_DEPENDS=	::devel/p5-Time-TimeDate \
		::converters/p5-DateManip \
		::mail/p5-Mail-Mbox-MessageParser
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/p5-Benchmark-Timer
		
CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
