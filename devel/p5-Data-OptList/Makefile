# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:46 sthen Exp $

COMMENT=	parse and validate simple name/value option pairs

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Data-OptList-0.110
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Params-Util \
		devel/p5-Sub-Install
TEST_DEPENDS=devel/p5-Test-Perl-Critic

MAKE_ENV=	TEST_POD=Yes \
		PERL_TEST_CRITIC=Yes

.include <bsd.port.mk>
