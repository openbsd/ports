# $OpenBSD: Makefile,v 1.20 2019/11/03 14:07:41 jasper Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Container-0.13
REVISION=	0
CATEGORIES=	devel

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23
TEST_DEPENDS=	devel/p5-Test-Perl-Critic

MAKE_ENV +=	AUTHOR_TESTING=Yes

.include <bsd.port.mk>
