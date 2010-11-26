# $OpenBSD: Makefile,v 1.13 2010/11/26 07:19:00 espie Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
DISTNAME=	Class-Container-0.12
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate>=0.23

.include <bsd.port.mk>
