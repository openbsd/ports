# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:02 sthen Exp $

COMMENT=	unicode-aware catalyst (old style)

DISTNAME=	Catalyst-Plugin-Unicode-0.93
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-MRO-Compat
TEST_DEPENDS=devel/p5-IO-stringy \
		devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
