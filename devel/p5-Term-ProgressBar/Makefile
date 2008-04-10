# $OpenBSD: Makefile,v 1.1.1.1 2008/04/10 17:43:42 okan Exp $

COMMENT=		text mode progress bar 

MODULES=		cpan
DISTNAME=		Term-ProgressBar-2.09
CATEGORIES=		devel

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS	= ::devel/p5-Class-MethodMaker \
		  ::devel/p5-Term-ReadKey
RUN_DEPENDS	= ${BUILD_DEPENDS}

.include <bsd.port.mk>
