# $OpenBSD: Makefile,v 1.18 2019/01/07 01:57:01 afresh1 Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Container-0.13
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23
TEST_DEPENDS=	devel/p5-Test-Perl-Critic

MAKE_ENV +=	AUTHOR_TESTING=Yes

.include <bsd.port.mk>
