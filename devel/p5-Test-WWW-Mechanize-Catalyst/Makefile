# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:13 sthen Exp $

COMMENT=        Test-WWW-Mechanize extension for catalyst

MODULES=	cpan
DISTNAME=	Test-WWW-Mechanize-Catalyst-0.42
REVISION=	0
CATEGORIES=     devel www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Test-WWW-Mechanize \
		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=::www/p5-Catalyst-Plugin-Session

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
