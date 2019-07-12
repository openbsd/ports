# $OpenBSD: Makefile,v 1.19 2019/07/12 20:45:12 sthen Exp $

COMMENT=	test suite using WWW::Mechanize

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-WWW-Mechanize-1.52
CATEGORIES=	www devel

# Artistic 2.0
PERMIT_PACKAGE=	Yes

# Can use p5-HTML-Tidy5 when available
RUN_DEPENDS=	devel/p5-Carp-Assert-More>=1.16 \
		devel/p5-Test-LongString>=0.15 \
		www/p5-HTML-Form \
		www/p5-HTML-Lint>=2.20 \
		www/p5-HTML-Parser \
		www/p5-HTTP-Server-Simple>=0.42 \
		www/p5-URI \
		www/p5-WWW-Mechanize>=1.68 \
		www/p5-libwww>=6.02

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
