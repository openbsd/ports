# $OpenBSD: Makefile,v 1.8 2015/01/21 14:27:59 sthen Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
DISTNAME=		Term-ProgressBar-2.09
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= devel/p5-Class-MethodMaker \
		  devel/p5-Term-ReadKey

.include <bsd.port.mk>
