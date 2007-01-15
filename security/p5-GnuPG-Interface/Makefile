# $OpenBSD: Makefile,v 1.10 2007/01/15 17:40:10 simon Exp $

COMMENT=	"perl5 interface to GnuPG"

MODULES=	cpan
DISTNAME=	GnuPG-Interface-0.31
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

BUILD_DEPENDS=	::devel/p5-Class-MethodMaker
RUN_DEPENDS=	::devel/p5-Class-MethodMaker \
		:gnupg-*:security/gnupg

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

.include <bsd.port.mk>	
