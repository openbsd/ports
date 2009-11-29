# $OpenBSD: Makefile.inc,v 1.7 2009/11/29 09:16:17 ajacoutot Exp $

CATEGORIES ?=	multimedia devel

HOMEPAGE ?=	http://gstreamer.freedesktop.org/

# LGPL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes

MASTER_SITE_GST =	http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX ?=		.tar.bz2
VERSION =		0.10
SUBST_VARS +=		VERSION
SHARED_ONLY =		Yes
SEPARATE_BUILD ?=	simple
P =			multimedia/gstreamer-${VERSION}

USE_GMAKE ?=		Yes
USE_LIBTOOL ?=		Yes
# avoid compiling plugins as static libraries
LIBTOOL_FLAGS ?=	--tag=disable-static

BUILD_DEPENDS +=	:bison-*:devel/bison

AUTOCONF_VERSION ?=	2.62
CONFIGURE_STYLE ?=	autoconf

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--localstatedir=/var/db \
			--with-default-audiosink=libsndiosink \
			--with-default-audiosrc=libsndiosrc \
			--with-default-videosink=xvimagesink \
			--with-default-videosrc=v4l2src \
			--with-default-visualizer=goom \
			--disable-introspection \
			--disable-shave \
			--disable-valgrind \
			--disable-static

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/libpng \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib"
