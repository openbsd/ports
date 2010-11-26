# $OpenBSD: Makefile,v 1.15 2010/11/26 07:19:01 espie Exp $

COMMENT=	module to declare real exception classes in perl

MODULES=	cpan
DISTNAME=	Exception-Class-1.32
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Michael Coulter <mjc@bitz.ca>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable>=0.02 \
		devel/p5-Devel-StackTrace>=1.20

.include <bsd.port.mk>
