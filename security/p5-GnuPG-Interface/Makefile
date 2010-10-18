# $OpenBSD: Makefile,v 1.14 2010/10/18 21:41:47 espie Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
DISTNAME=	GnuPG-Interface-0.36
REVISION=	0
CATEGORIES=	security
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-MethodMaker \
		:gnupg-<2:security/gnupg

.include <bsd.port.mk>	
