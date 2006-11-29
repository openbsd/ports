# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:31 espie Exp $

COMMENT=        "Test-WWW-Mechanize extension for catalyst"

MODULES=	cpan
DISTNAME=	Test-WWW-Mechanize-Catalyst-0.37
CATEGORIES=     devel www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Test-WWW-Mechanize \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
