# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:18 naddy Exp $

COMMENT=	parse and validate simple name/value option pairs

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Data-OptList-0.109
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Params-Util \
		devel/p5-Sub-Install
TEST_DEPENDS=devel/p5-Test-Perl-Critic

MAKE_ENV=	TEST_POD=Yes \
		PERL_TEST_CRITIC=Yes

.include <bsd.port.mk>
