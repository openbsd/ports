# $OpenBSD: Makefile,v 1.2 2010/07/03 02:44:13 naddy Exp $

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

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= ::devel/p5-Class-MethodMaker \
		  ::devel/p5-Term-ReadKey

.include <bsd.port.mk>
