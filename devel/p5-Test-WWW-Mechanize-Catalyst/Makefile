# $OpenBSD: Makefile,v 1.10 2012/04/08 22:01:43 sthen Exp $

COMMENT=        Test-WWW-Mechanize extension for catalyst

MODULES=	cpan
DISTNAME=	Test-WWW-Mechanize-Catalyst-0.56
CATEGORIES=     devel www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Test-WWW-Mechanize>=1.14 \
		devel/p5-Moose \
		devel/p5-namespace-clean \
		www/p5-Catalyst-Runtime \
		www/p5-libwww \
		www/p5-WWW-Mechanize
REGRESS_DEPENDS=devel/p5-Test-Exception \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
