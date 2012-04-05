# $OpenBSD: Makefile.inc,v 1.20 2012/04/05 16:24:35 ajacoutot Exp $

CATEGORIES ?=	multimedia devel

HOMEPAGE ?=	http://gstreamer.freedesktop.org/

MAINTAINER ?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes

# NOTE: when VERSION changes, check the following ports that hardcode
# the current gstreamer version in their PLIST:
# net/farsight2
# net/libnice
VERSION =		0.10
SUBST_VARS +=		VERSION

MASTER_SITE_GST =	http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX ?=		.tar.bz2
SHARED_ONLY =		Yes
SEPARATE_BUILD ?=	Yes
P =			multimedia/gstreamer-${VERSION}

USE_GMAKE ?=		Yes
USE_LIBTOOL ?=		Yes
# avoid compiling plugins as static libraries
LIBTOOL_FLAGS ?=	--tag=disable-static

BUILD_DEPENDS +=	devel/bison \
			devel/gobject-introspection

AUTOCONF_VERSION ?=	2.68
CONFIGURE_STYLE ?=	autoconf

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--localstatedir=/var/db \
			--with-default-audiosink=sndiosink \
			--with-default-audiosrc=sndiosrc \
			--with-default-videosink=xvimagesink \
			--with-default-videosrc=v4l2src \
			--with-default-visualizer=goom \
			--enable-introspection \
			--disable-gtk-doc \
			--disable-valgrind \
			--disable-static

CPPFLAGS +=		-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"
