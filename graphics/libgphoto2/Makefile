# $OpenBSD: Makefile,v 1.17 2009/05/08 08:05:53 ajacoutot Exp $

COMMENT=	digital camera library
CATEGORIES=	graphics devel

MAINTAINER=	Marc Espie <espie@openbsd.org>

VERSION=	2.4.5
DISTNAME=	libgphoto2-${VERSION}
PKGNAME=	libgphoto-${VERSION}
SHARED_LIBS+=	gphoto2		3.1 # 6.0
SHARED_LIBS+=	gphoto2_port	6.0 # 8.0

HOMEPAGE=	http://www.gphoto.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# LGPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=		c m

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_DOXYGEN=false
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--without-hal \
			--without-bonjour

SUBST_VARS=		VERSION

MODULES=		devel/gettext
LIB_DEPENDS=		exif::graphics/libexif \
			jpeg::graphics/jpeg \
			usb::devel/libusb \
			ltdl.>=4::devel/libtool,-ltdl

.include <bsd.port.mk>
