# $OpenBSD: Makefile,v 1.14 2007/09/15 20:09:42 simon Exp $

COMMENT=	module to determine the size of images in several formats

DISTNAME=	Image-Size-3.01
CATEGORIES=	graphics 

HOMEPAGE=       http://www.blackperl.com/Image::Size/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= modbuild

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

MODULES=	cpan

.include <bsd.port.mk>
