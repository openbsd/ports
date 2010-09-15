# $OpenBSD: Makefile,v 1.8 2010/09/15 13:52:11 sthen Exp $

COMMENT= 	test suite using WWW::Mechanize

MODULES=	cpan

DISTNAME=	Test-WWW-Mechanize-1.12
REVISION=	1
CATEGORIES=	www devel

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Carp-Assert-More \
		::devel/p5-Test-LongString \
		::www/p5-HTTP-Server-Simple \
		::www/p5-WWW-Mechanize 

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
