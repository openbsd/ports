# $OpenBSD: Makefile,v 1.2 2001/04/05 21:12:40 peter Exp $

COMMENT=	"perl5 interface to GnuPG"

VERSION=	0.11
DISTNAME=	GnuPG-Interface-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.386
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GnuPG

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/Class/MethodMaker.pm::devel/p5-Class-MethodMaker
RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/Class/MethodMaker.pm::devel/p5-Class-MethodMaker \
		${LOCALBASE}/bin/gpg::security/gnupg

MAINTAINER=	Peter Galbavy <peter.galbavy@knowledge.com>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
