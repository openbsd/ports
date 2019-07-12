# $OpenBSD: Makefile,v 1.19 2019/07/12 20:50:51 sthen Exp $

COMMENT=	I18N for Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-I18N-0.10
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Locale-Maketext-Lexicon \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
