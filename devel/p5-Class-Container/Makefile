# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:14 espie Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
DISTNAME=	Class-Container-0.12
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23

.include <bsd.port.mk>
