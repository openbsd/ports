# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:06 sthen Exp $

COMMENT=	defines RGB values for common color names

DISTNAME=	Graphics-ColorNames-2.11
REVISION=	2
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
PKG_ARCH=	*
CPAN_AUTHOR=	RRWO

.include <bsd.port.mk>
