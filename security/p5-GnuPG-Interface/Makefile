# $OpenBSD: Makefile,v 1.15 2010/11/20 17:22:44 espie Exp $

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
RUN_DEPENDS=	devel/p5-Class-MethodMaker \
		security/gnupg<2

.include <bsd.port.mk>	
