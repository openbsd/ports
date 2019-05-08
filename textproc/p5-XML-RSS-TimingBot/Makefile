# $OpenBSD: Makefile,v 1.10 2019/05/08 15:44:46 danj Exp $

COMMENT=	efficiently fetch RSS feeds

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-RSS-TimingBot-2.03
REVISION=	1
CATEGORIES=	textproc

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-LWP-UserAgent-Determined \
		textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Timing \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-XSLT

.include <bsd.port.mk>
