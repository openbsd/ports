# $OpenBSD: Makefile,v 1.1.1.1 2019/07/06 20:34:17 afresh1 Exp $

COMMENT =	parser and builder for x-www-form-urlencoded in XS

DISTNAME =	WWW-Form-UrlEncoded-XS-0.26
CATEGORIES =	www
MODULES =	cpan

# Perl
PERMIT_PACKAGE =	Yes
WANTLIB =		perl c

TEST_DEPENDS =		converters/p5-JSON>=2

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
