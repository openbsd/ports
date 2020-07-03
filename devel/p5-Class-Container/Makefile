# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:42 sthen Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Container-0.13
REVISION=	1
CATEGORIES=	devel

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23
TEST_DEPENDS=	devel/p5-Test-Perl-Critic

MAKE_ENV +=	AUTHOR_TESTING=Yes

.include <bsd.port.mk>
