# $OpenBSD: Makefile,v 1.9 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	"perl5 interface to GnuPG"

VERSION=	0.09
DISTNAME=	GnuPG-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GnuPG/}

RUN_DEPENDS=	:gnupg-*:security/gnupg

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
