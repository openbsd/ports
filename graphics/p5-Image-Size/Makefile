# $OpenBSD: Makefile,v 1.6 2002/05/13 23:31:24 espie Exp $

COMMENT=	"module to determine the size of images in several formats"

DISTNAME=	Image-Size-2.97
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5 
NEED_VERSION=	1.505

HOMEPAGE=       http://www.blackperl.com/Image::Size/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness        

.include <bsd.port.mk>
