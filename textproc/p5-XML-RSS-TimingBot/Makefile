# $OpenBSD: Makefile,v 1.1.1.1 2004/12/21 21:58:34 sturm Exp $

COMMENT=	"efficiently fetch RSS feeds"

DISTNAME=	XML-RSS-TimingBot-2.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	::www/p5-LWP-UserAgent-Determined \
		::textproc/p5-XML-RSS \
		::textproc/p5-XML-RSS-Timing \
		::textproc/p5-XML-LibXML \
		::textproc/p5-XML-XSLT
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
