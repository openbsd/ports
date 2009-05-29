# $OpenBSD: Makefile,v 1.9 2009/05/29 14:46:28 dhill Exp $

COMMENT=	module to declare real exception classes in perl

MODULES=	cpan
DISTNAME=	Exception-Class-1.29
CATEGORIES=	devel

MAINTAINER=	Michael Coulter <mjc@bitz.ca>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-Data-Inheritable->=0.02:devel/p5-Class-Data-Inheritable \
		:p5-Devel-StackTrace->=1.12:devel/p5-Devel-StackTrace

.include <bsd.port.mk>
