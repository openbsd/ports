# $OpenBSD: Makefile,v 1.12 2006/10/10 05:57:49 kevlo Exp $

COMMENT=	"module to determine the size of images in several formats"

DISTNAME=	Image-Size-3.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5 

HOMEPAGE=       http://www.blackperl.com/Image::Size/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/}

CONFIGURE_STYLE= perl modbuild

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

PKG_ARCH=	*

.include <bsd.port.mk>
