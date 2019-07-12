# $OpenBSD: Makefile,v 1.16 2019/07/12 21:02:16 sthen Exp $

COMMENT=		localization data for perl DateTime.pm

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		DateTime-Locale-0.46
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Params-Validate
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-Output

.include <bsd.port.mk>
