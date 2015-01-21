# $OpenBSD: Makefile,v 1.8 2015/01/21 14:41:38 sthen Exp $

COMMENT=	efficiently fetch RSS feeds

MODULES=	cpan
DISTNAME=	XML-RSS-TimingBot-2.03
REVISION=	0
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-LWP-UserAgent-Determined \
		textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Timing \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-XSLT

.include <bsd.port.mk>
