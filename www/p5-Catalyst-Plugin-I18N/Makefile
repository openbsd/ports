# $OpenBSD: Makefile,v 1.10 2010/10/19 08:02:55 espie Exp $

COMMENT= 	I18N for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-I18N-0.08
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Locale-Maketext-Lexicon \
		::devel/p5-I18N-LangTags \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
