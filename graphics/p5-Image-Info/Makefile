# $OpenBSD: Makefile,v 1.1.1.1 2001/03/30 22:02:20 avsm Exp $

COMMENT=	"perl module for getting image information"

DISTNAME=	Image-Info-1.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.364

MAINTAINER=	Shell Hung <i@shellhung.org>

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
