# $OpenBSD: Makefile,v 1.7 2002/05/13 23:31:24 espie Exp $

COMMENT=	"perl module for getting image information"

VERSION=	1.09
DISTNAME=	Image-Info-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.500

MAINTAINER=	Shell Hung <shell@openbsd.org>

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Image/}

BUILD_DEPENDS=  ::devel/p5-IO-String

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
