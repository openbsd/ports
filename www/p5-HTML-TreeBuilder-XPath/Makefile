# $OpenBSD: Makefile,v 1.8 2014/11/12 12:07:13 benoit Exp $

COMMENT =	add XPath support to HTML::TreeBuilder

MODULES =	cpan
DISTNAME =	HTML-TreeBuilder-XPath-0.14
CATEGORIES =	www

USE_GROFF =	Yes

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-XML-XPathEngine>=0.12 \
		www/p5-HTML-Tree

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
