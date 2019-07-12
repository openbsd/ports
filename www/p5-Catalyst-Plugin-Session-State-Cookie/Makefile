# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:52 sthen Exp $

COMMENT=	catalyst session IDs with cookies

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-Session-State-Cookie-0.17
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

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
