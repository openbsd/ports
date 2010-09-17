# $OpenBSD: Makefile,v 1.1.1.1 2010/09/17 21:37:18 sthen Exp $

COMMENT=	virtual lighttable and darkroom for photographers
DISTNAME=	darktable-0.6

SHARED_ONLY=	Yes

CATEGORIES=	graphics x11

HOMEPAGE=	http://darktable.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += Half Iex IlmImf IlmThread Imath ORBit-2 X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo crypto curl dbus-1 dbus-glib-1 eggdbus-1
WANTLIB += exif exiv2 expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gphoto2 gphoto2_port
WANTLIB += gthread-2.0 gtk-x11-2.0 idn jpeg lcms ltdl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += pthread sqlite3 ssl stdc++ tiff usb xcb-render-util xcb-render
WANTLIB += xcb xml2 z lensfun

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=darktable/}

MODULES=	devel/gconf2 \
		devel/gettext \
		textproc/intltool

MODGCONF2_SCHEMAS_DIR= darktable

RUN_DEPENDS=	::devel/desktop-file-utils
LIB_DEPENDS=	::databases/sqlite3 \
		::devel/libglade2 \
		::graphics/exiv2 \
		::graphics/lcms \
		::graphics/libgphoto2 \
		::graphics/lensfun \
		::graphics/openexr \
		::net/curl \
		::x11/gnome/libgnome-keyring

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_LIBTOOL=	Yes
# make works for most things, except intltool.m4's .schemas rule
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-gegl \
		--disable-silent-rules \
		--localedir=${TRUEPREFIX}/share/locale
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}"

LDFLAGS+=	-L${LOCALBASE}/lib

# add trailing linefeeds
LF+= control/jobs/camera.h control/jobs/camera_jobs.c control/jobs/camera_jobs.h
LF+= control/jobs/control.h control/jobs/control_jobs.h control/jobs/develop.h
LF+= control/jobs/film.h control/jobs/image_jobs.c control/jobs/film_jobs.h
LF+= gui/iop_history.h control/jobs/develop_jobs.h
pre-patch:
.for i in ${LF}
	echo >> ${WRKSRC}/src/$i
.endfor

.include <bsd.port.mk>
