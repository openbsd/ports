# $OpenBSD: Makefile,v 1.5 2004/11/30 01:06:37 espie Exp $

COMMENT=	"extract digital camera info tags from JPEG images"

DISTNAME=	libexif-0.5.9
CATEGORIES=	graphics

HOMEPAGE=	http://sourceforge.net/projects/libexif/
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}

MODULES=	devel/gettext
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
