# $OpenBSD: Makefile,v 1.35 2014/08/30 09:37:26 ajacoutot Exp $

COMMENT =	digital camera library
CATEGORIES =	graphics devel

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

VERSION =	2.5.5
DISTNAME =	libgphoto2-${VERSION}
PKGNAME =	libgphoto-${VERSION}

SHARED_LIBS +=  gphoto2_port         7.0      # 11.1
SHARED_LIBS +=  gphoto2              4.2      # 6.0

HOMEPAGE =	http://www.gphoto.org/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c exif expat fontconfig freetype gd jpeg ltdl m png
WANTLIB += pthread pthread-stubs tiff usb usb-1.0 vpx xml2 z

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
			devel/libtool,-ltdl \
			textproc/libxml

# cleanup
post-install:
	rm ${PREFIX}/lib/libgphoto2/${VERSION}/*.{a,la}
	rm ${PREFIX}/lib/libgphoto2_port/0.10.0/*.{a,la}
	rm -rf ${PREFIX}/lib/udev
	mv ${PREFIX}/share/doc/libgphoto2_port \
		${PREFIX}/share/doc/libgphoto2
	rm ${PREFIX}/share/doc/libgphoto2/{ABOUT-NLS,AUTHORS,COPYING,ChangeLog,NEWS,README.packaging}

.include <bsd.port.mk>
