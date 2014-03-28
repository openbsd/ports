# $OpenBSD: Makefile,v 1.15 2014/03/28 21:59:33 nigel Exp $

COMMENT=	test suite using WWW::Mechanize

MODULES=	cpan

DISTNAME=	Test-WWW-Mechanize-1.44
CATEGORIES=	www devel

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Carp-Assert-More \
		devel/p5-Test-LongString \
		www/p5-HTML-Lint>=2.20 \
		www/p5-HTML-Tree \
		www/p5-HTTP-Server-Simple \
		www/p5-WWW-Mechanize \
		www/p5-URI

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
