# $OpenBSD: Makefile,v 1.14 2010/11/15 19:46:03 espie Exp $

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
RUN_DEPENDS=	STEM->=0.02:devel/p5-Class-Data-Inheritable \
		STEM->=1.20:devel/p5-Devel-StackTrace

.include <bsd.port.mk>
