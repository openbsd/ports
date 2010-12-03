# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=	efficiently fetch RSS feeds

MODULES=	cpan
DISTNAME=	XML-RSS-TimingBot-2.03
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-LWP-UserAgent-Determined \
		textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Timing \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-XSLT

.include <bsd.port.mk>
