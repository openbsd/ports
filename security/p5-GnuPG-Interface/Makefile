# $OpenBSD: Makefile,v 1.9 2005/07/06 23:18:11 jolan Exp $

COMMENT=	"perl5 interface to GnuPG"

VERSION=	0.31
DISTNAME=	GnuPG-Interface-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GnuPG/}

BUILD_DEPENDS=	::devel/p5-Class-MethodMaker
RUN_DEPENDS=	::devel/p5-Class-MethodMaker \
		:gnupg-*:security/gnupg

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
