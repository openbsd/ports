# $OpenBSD: Makefile,v 1.5 2002/03/21 21:25:51 espie Exp $

COMMENT=	"perl5 interface to GnuPG using scalars"

VERSION=	0.06
DISTNAME=	GPG-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= ../../authors/id/M/MI/MILES

BUILD_DEPENDS=	:gnupg-*:security/gnupg
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
