# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:15 naddy Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Container-0.12
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23

.include <bsd.port.mk>
