# $OpenBSD: Makefile,v 1.2 2020/07/03 21:46:06 sthen Exp $

COMMENT =	parser and builder for x-www-form-urlencoded in XS

DISTNAME =	WWW-Form-UrlEncoded-XS-0.26
CATEGORIES =	www
MODULES =	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes
WANTLIB =		perl c

TEST_DEPENDS =		converters/p5-JSON>=2

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
