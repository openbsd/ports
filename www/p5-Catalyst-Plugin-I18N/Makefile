# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT= 	"I18N for Catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-I18N-0.05
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Locale-Maketext-Lexicon \
		::devel/p5-Locale-Maketext-Simple \
		::devel/p5-I18N-LangTags \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
