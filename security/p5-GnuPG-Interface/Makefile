# $OpenBSD: Makefile,v 1.7 2002/05/15 17:58:50 espie Exp $

COMMENT=	"perl5 interface to GnuPG"

VERSION=	0.31
DISTNAME=	GnuPG-Interface-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.515
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
