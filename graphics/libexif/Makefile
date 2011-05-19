# $OpenBSD: Makefile,v 1.21 2011/05/19 15:56:12 sthen Exp $

COMMENT=	extract digital camera info tags from JPEG images

DISTNAME=	libexif-0.6.20
REVISION=	0
SHARED_LIBS=	exif	13.0

CATEGORIES=	graphics

HOMEPAGE=	http://libexif.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libexif/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-docs
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
WANTLIB=		m

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/libexif

.include <bsd.port.mk>
