# $OpenBSD: Makefile,v 1.30 2013/10/11 23:49:48 naddy Exp $

COMMENT =	digital camera library
CATEGORIES =	graphics devel

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

VERSION =	2.5.2
DISTNAME =	libgphoto2-${VERSION}
PKGNAME =	libgphoto-${VERSION}

SHARED_LIBS +=  gphoto2_port         7.0      # 11.1
SHARED_LIBS +=  gphoto2              4.1      # 6.0

HOMEPAGE =	http://www.gphoto.org/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c exif expat fontconfig freetype gd jpeg ltdl m png
WANTLIB += pthread pthread-stubs usb usb-1.0 z

MAKE_FLAGS =		INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			ac_cv_path_DOXYGEN=false
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-static \
			--without-hal \
			--without-bonjour

SUBST_VARS =		VERSION

MODULES =		devel/gettext
LIB_DEPENDS =		graphics/gd \
			graphics/libexif \
			devel/libusb-compat \
			devel/libtool,-ltdl

# cleanup
post-install:
	rm ${PREFIX}/lib/libgphoto2/${VERSION}/*.{a,la}
	rm ${PREFIX}/lib/libgphoto2_port/0.10.0/*.{a,la}
	rm -rf ${PREFIX}/lib/udev
	mv ${PREFIX}/share/doc/libgphoto2_port \
		${PREFIX}/share/doc/libgphoto2

.include <bsd.port.mk>
