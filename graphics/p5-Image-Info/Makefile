# $OpenBSD: Makefile,v 1.4 2001/08/24 22:54:32 shell Exp $

COMMENT=	"perl module for getting image information"

VERSION=	1.08
DISTNAME=	Image-Info-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.443

MAINTAINER=	Shell Hung <shell@openbsd.org>

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Image

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ${PERL_MODULES}/IO/String.pm::devel/p5-IO-String

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
