# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:07 espie Exp $

COMMENT=		text mode progress bar 

MODULES=		cpan
DISTNAME=		Term-ProgressBar-2.09
CATEGORIES=		devel
USE_GROFF =	Yes

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= ::devel/p5-Class-MethodMaker \
		  ::devel/p5-Term-ReadKey

.include <bsd.port.mk>
