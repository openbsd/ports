# $OpenBSD: Makefile,v 1.17 2010/12/03 11:46:47 ajacoutot Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
DISTNAME=	GnuPG-Interface-0.36
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-MethodMaker \
		security/gnupg

.include <bsd.port.mk>	
