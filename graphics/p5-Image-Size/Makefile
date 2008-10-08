# $OpenBSD: Makefile,v 1.15 2008/10/08 13:04:18 jasper Exp $

COMMENT=	module to determine the size of images in several formats

DISTNAME=	Image-Size-3.1.1
CATEGORIES=	graphics 

HOMEPAGE=       http://www.blackperl.com/Image::Size/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic License and LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= modbuild

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

MODULES=	cpan

.include <bsd.port.mk>
