# $OpenBSD: Makefile,v 1.3 2010/07/13 20:14:24 sthen Exp $

COMMENT= 	combines WWW::Mechanize and HTML::TreeBuilder

MODULES=	cpan

DISTNAME=	WWW-Mechanize-TreeBuilder-1.10001
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-MooseX-Role-Parameterized \
		::www/p5-WWW-Mechanize \
		::www/p5-HTML-Tree

REGRESS_DEPENDS=::devel/p5-Test-WWW-Mechanize \
		::www/p5-HTML-TreeBuilder-XPath

.include <bsd.port.mk>
