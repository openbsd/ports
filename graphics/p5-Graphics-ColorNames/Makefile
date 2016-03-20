# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:44 naddy Exp $

COMMENT=	defines RGB values for common color names

DISTNAME=	Graphics-ColorNames-2.11
REVISION=	2
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
PKG_ARCH=	*
CPAN_AUTHOR=	RRWO

.include <bsd.port.mk>
