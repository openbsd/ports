# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:56 sthen Exp $

COMMENT=	parses long function arguments

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Getargs-Long-1.1012
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	www/p5-URI
RUN_DEPENDS=	devel/p5-Log-Agent>=0.105

TEST_DEPENDS=	devel/p5-Perl-Critic \
		devel/p5-Test-Compile \
		devel/p5-Test-Perl-Critic

MAKE_ENV +=	TEST_POD=Yes \
		TEST_AUTHOR=Yes

.include <bsd.port.mk>
