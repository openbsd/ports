# $OpenBSD: Makefile,v 1.24 2012/02/27 13:46:10 ajacoutot Exp $

COMMENT =	digital camera library
CATEGORIES =	graphics devel

MAINTAINER =	Marc Espie <espie@openbsd.org>

VERSION =	2.4.11
DISTNAME =	libgphoto2-${VERSION}
PKGNAME =	libgphoto-${VERSION}
REVISION =	0
SHARED_LIBS +=	gphoto2		3.1 # 6.0
SHARED_LIBS +=	gphoto2_port	6.0 # 8.0

HOMEPAGE =	http://www.gphoto.org/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# LGPLv2
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

WANTLIB += c exif jpeg ltdl m pthread usb usb-1.0

MAKE_FLAGS =		INTLLIBS='$$(LTLIBINTL)'

USE_LIBTOOL =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_DOXYGEN=false
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-static \
			--without-hal \
			--without-bonjour

SUBST_VARS =		VERSION

MODULES =		devel/gettext
LIB_DEPENDS =		graphics/libexif \
			graphics/jpeg \
			devel/libusb-compat \
			devel/libtool,-ltdl

# cleanup
post-install:
	rm -rf ${PREFIX}/lib/libgphoto2/${VERSION}/*.{a,la}
	rm -rf ${PREFIX}/lib/udev

.include <bsd.port.mk>
