# $OpenBSD: Makefile,v 1.2 2002/07/16 06:18:17 pvalchev Exp $

COMMENT=	"extract digital camera info tags from JPEG images"

DISTNAME=	libexif-0.5.3
CATEGORIES=	graphics

HOMEPAGE=	http://sourceforge.net/projects/libexif/

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}

MODULES=	gettext

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lintl"

.include <bsd.port.mk>
