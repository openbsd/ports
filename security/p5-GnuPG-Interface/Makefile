# $OpenBSD: Makefile,v 1.8 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	"perl5 interface to GnuPG"

VERSION=	0.31
DISTNAME=	GnuPG-Interface-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GnuPG/}

BUILD_DEPENDS=	::devel/p5-Class-MethodMaker
RUN_DEPENDS=	::devel/p5-Class-MethodMaker \
		:gnupg-*:security/gnupg

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
