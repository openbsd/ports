# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:35 naddy Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Term-ProgressBar-2.17
CATEGORIES=		devel

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= devel/p5-Class-MethodMaker \
		  devel/p5-Term-ReadKey

.include <bsd.port.mk>
