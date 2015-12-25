# $OpenBSD: Makefile,v 1.9 2015/12/25 21:31:45 landry Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
DISTNAME=		Term-ProgressBar-2.17
CATEGORIES=		devel

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= devel/p5-Class-MethodMaker \
		  devel/p5-Term-ReadKey

.include <bsd.port.mk>
