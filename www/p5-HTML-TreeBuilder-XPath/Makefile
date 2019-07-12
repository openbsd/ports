# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:54 sthen Exp $

COMMENT =	add XPath support to HTML::TreeBuilder

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTML-TreeBuilder-XPath-0.14
CATEGORIES =	www

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/p5-XML-XPathEngine>=0.12 \
		www/p5-HTML-Tree

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
