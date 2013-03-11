# $OpenBSD: Makefile,v 1.14 2013/03/11 11:44:44 espie Exp $

COMMENT=	I18N for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-I18N-0.10
CATEGORIES=	www
USE_GROFF =	Yes

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
