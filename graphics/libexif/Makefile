# $OpenBSD: Makefile,v 1.7 2005/03/07 09:40:59 espie Exp $

COMMENT=	"extract digital camera info tags from JPEG images"

DISTNAME=	libexif-0.5.9
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics

HOMEPAGE=	http://sourceforge.net/projects/libexif/
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}

BUILD_DEPENDS=	::devel/gettext
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
