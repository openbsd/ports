# $OpenBSD: Makefile,v 1.13 2010/08/25 06:34:51 ajacoutot Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
DISTNAME=	GnuPG-Interface-0.36
REVISION=	0
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-MethodMaker \
		:gnupg-<2:security/gnupg

.include <bsd.port.mk>	
