# $OpenBSD: Makefile,v 1.11 2009/05/30 21:10:12 kili Exp $

COMMENT=	module to declare real exception classes in perl

MODULES=	cpan
DISTNAME=	Exception-Class-1.29
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Michael Coulter <mjc@bitz.ca>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-Data-Inheritable->=0.02:devel/p5-Class-Data-Inheritable \
		:p5-Devel-StackTrace->=1.20:devel/p5-Devel-StackTrace

.include <bsd.port.mk>
