# $OpenBSD: Makefile,v 1.4 2001/04/13 20:19:10 peter Exp $

COMMENT=	"perl5 interface to GnuPG"

VERSION=	0.07
DISTNAME=	GnuPG-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.395
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GnuPG

RUN_DEPENDS=	${LOCALBASE}/bin/gpg:gnupg-*:security/gnupg

MAINTAINER=	Peter Galbavy <peter.galbavy@knowledge.com>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
