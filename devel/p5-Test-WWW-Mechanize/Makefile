# $OpenBSD: Makefile,v 1.14 2013/10/11 23:49:23 naddy Exp $

COMMENT=	test suite using WWW::Mechanize

MODULES=	cpan

DISTNAME=	Test-WWW-Mechanize-1.30
CATEGORIES=	www devel

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Carp-Assert-More \
		devel/p5-Test-LongString \
		www/p5-HTML-Lint \
		www/p5-HTML-Tree \
		www/p5-HTTP-Server-Simple \
		www/p5-WWW-Mechanize \
		www/p5-URI

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
