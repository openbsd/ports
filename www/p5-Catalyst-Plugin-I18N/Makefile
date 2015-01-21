# $OpenBSD: Makefile,v 1.15 2015/01/21 14:42:33 sthen Exp $

COMMENT=	I18N for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-I18N-0.10
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Locale-Maketext-Lexicon \
		devel/p5-MRO-Compat \
		devel/p5-I18N-LangTags \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
