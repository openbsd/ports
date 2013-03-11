# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:46 espie Exp $

COMMENT=	add XPath support to HTML::TreeBuilder

MODULES=	cpan
DISTNAME=	HTML-TreeBuilder-XPath-0.11
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-XPathEngine>=0.12 \
		www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
