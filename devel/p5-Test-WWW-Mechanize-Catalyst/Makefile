# $OpenBSD: Makefile,v 1.5 2009/05/03 15:39:22 jasper Exp $

COMMENT=        Test-WWW-Mechanize extension for catalyst

MODULES=	cpan
DISTNAME=	Test-WWW-Mechanize-Catalyst-0.42
PKGNAME=	p5-${DISTNAME}p0
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
