# $OpenBSD: Makefile,v 1.8 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	"perl5 interface to GnuPG using scalars"

VERSION=	0.06
DISTNAME=	GPG-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MI/MILES}

BUILD_DEPENDS=	:gnupg-*:security/gnupg
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
