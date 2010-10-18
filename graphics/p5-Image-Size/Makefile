# $OpenBSD: Makefile,v 1.17 2010/10/18 18:13:14 espie Exp $

COMMENT=	module to determine the size of images in several formats

DISTNAME=	Image-Size-3.2
CATEGORIES=	graphics 

HOMEPAGE=       http://www.blackperl.com/Image::Size/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic License and LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
