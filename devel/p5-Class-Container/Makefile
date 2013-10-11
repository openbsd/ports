# $OpenBSD: Makefile,v 1.16 2013/10/11 23:48:33 naddy Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
DISTNAME=	Class-Container-0.12
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23

.include <bsd.port.mk>
