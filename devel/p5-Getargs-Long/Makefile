# $OpenBSD: Makefile,v 1.19 2020/07/03 21:44:55 sthen Exp $

COMMENT=	parses long function arguments

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Getargs-Long-1.1012
CATEGORIES=	devel
REVISION =	0

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
