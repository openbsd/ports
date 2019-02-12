# $OpenBSD: Makefile,v 1.17 2019/02/12 18:44:26 cwen Exp $

COMMENT=	parses long function arguments

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Getargs-Long-1.1012
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	www/p5-URI
RUN_DEPENDS=	devel/p5-Log-Agent>=0.105

TEST_DEPENDS=	devel/p5-Perl-Critic \
		devel/p5-Test-Compile \
		devel/p5-Test-Perl-Critic

MAKE_ENV +=	TEST_POD=Yes \
		TEST_AUTHOR=Yes

.include <bsd.port.mk>
