# $OpenBSD: Makefile,v 1.4 2010/10/19 08:02:56 espie Exp $

COMMENT=	add XPath support to HTML::TreeBuilder

MODULES=	cpan
DISTNAME=	HTML-TreeBuilder-XPath-0.11
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-XML-XPathEngine->=0.12:textproc/p5-XML-XPathEngine \
		::www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
