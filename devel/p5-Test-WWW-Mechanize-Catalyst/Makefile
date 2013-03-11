# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:23 espie Exp $

COMMENT=        Test-WWW-Mechanize extension for catalyst

MODULES=	cpan
DISTNAME=	Test-WWW-Mechanize-Catalyst-0.56
CATEGORIES=     devel www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-WWW-Mechanize>=1.14 \
		devel/p5-Moose \
		devel/p5-namespace-clean \
		www/p5-Catalyst-Runtime \
		www/p5-libwww \
		www/p5-WWW-Mechanize
TEST_DEPENDS=devel/p5-Test-Exception \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
