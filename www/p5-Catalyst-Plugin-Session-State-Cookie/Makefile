# $OpenBSD: Makefile,v 1.14 2015/11/05 19:09:00 jca Exp $

COMMENT=	catalyst session IDs with cookies

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-State-Cookie-0.17
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Plugin-Session>=0.27 \
		www/p5-Catalyst-Runtime \
		devel/p5-Moose \
		devel/p5-MRO-Compat \
		devel/p5-namespace-autoclean
TEST_DEPENDS=devel/p5-Test-MockObject \
		devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
