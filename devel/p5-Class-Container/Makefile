# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:46 sthen Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Container-0.13
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23
TEST_DEPENDS=	devel/p5-Test-Perl-Critic

MAKE_ENV +=	AUTHOR_TESTING=Yes

.include <bsd.port.mk>
