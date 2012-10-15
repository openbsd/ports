# $OpenBSD: Makefile,v 1.6 2012/10/15 15:06:42 sthen Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
DISTNAME=		Term-ProgressBar-2.09
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= devel/p5-Class-MethodMaker \
		  devel/p5-Term-ReadKey

.include <bsd.port.mk>
