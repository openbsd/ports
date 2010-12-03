# $OpenBSD: Makefile,v 1.14 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT=	validate method/function parameters

MODULES=	cpan
DISTNAME=	Class-Container-0.12
REVISION=	1
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
