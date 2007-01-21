# $OpenBSD: Makefile,v 1.2 2007/01/21 21:46:22 simon Exp $

COMMENT=	"efficiently fetch RSS feeds"

MODULES=	cpan
DISTNAME=	XML-RSS-TimingBot-2.03
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-LWP-UserAgent-Determined \
		::textproc/p5-XML-RSS \
		::textproc/p5-XML-RSS-Timing \
		::textproc/p5-XML-LibXML \
		::textproc/p5-XML-XSLT

.include <bsd.port.mk>
