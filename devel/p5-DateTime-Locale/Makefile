# $OpenBSD: Makefile,v 1.17 2020/07/03 21:44:48 sthen Exp $

COMMENT=		localization data for perl DateTime.pm

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		DateTime-Locale-0.46
CATEGORIES=		devel
REVISION =		0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Params-Validate
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-Output

.include <bsd.port.mk>
