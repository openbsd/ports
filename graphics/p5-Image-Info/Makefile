# $OpenBSD: Makefile,v 1.9 2002/07/06 10:26:28 shell Exp $

COMMENT=	"perl module for getting image information"

VERSION=	1.11
DISTNAME=	Image-Info-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.532

MAINTAINER=	Shell Hung <shell@openbsd.org>

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Image/}

BUILD_DEPENDS=  :p5-IO-String->=1:devel/p5-IO-String
RUN_DEPENDS=    ${BUILD_DEPENDS

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
