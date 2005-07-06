# $OpenBSD: Makefile,v 1.11 2005/07/06 23:18:11 jolan Exp $

COMMENT=	"perl5 interface to GnuPG using scalars"

VERSION=	0.06
DISTNAME=	GPG-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MI/MILES/}

RUN_DEPENDS=	:gnupg-*:security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
