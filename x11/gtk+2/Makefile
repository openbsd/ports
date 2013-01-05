# $OpenBSD: Makefile,v 1.155 2013/01/05 18:13:56 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multi-platform graphical toolkit
COMMENT-guic=	gtk+ icon theme caching utility

V=		2.24.14
DISTNAME=	gtk+-${V}

PKGNAME-main=	gtk+2-${V}
PKGNAME-guic=	gtk-update-icon-cache-${V}

REVISION-main=	1

CATEGORIES=	x11 devel

SHARED_LIBS +=  gdk-x11-2.0          2400.0   # 2400.0
SHARED_LIBS +=  gtk-x11-2.0          2400.0   # 2400.0
SHARED_LIBS +=  gailutil             26.0     # 18.1

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre png z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtk+/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=	.tar.xz

MULTI_PACKAGES=	-main -guic

MODULES=	devel/gettext \
		lang/python

RUN_DEPENDS-main= ${RUN_DEPENDS} \
		${BASE_PKGPATH},-guic \
		x11/hicolor-icon-theme \
		misc/shared-mime-info

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		devel/glib2 \
		devel/pango \
		devel/atk \
		graphics/gdk-pixbuf2 \
		print/cups,-libs

WANTLIB-main += ${WANTLIB} c pthread glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-main += gio-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 atk-1.0
WANTLIB-main += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xi Xinerama Xrandr Xrender Xxf86vm cairo drm expat
WANTLIB-main += fontconfig freetype pixman-1 pthread-stubs stdc++ xcb
WANTLIB-main += xcb-render xcb-shm png asn1 crypto cups gssapi krb5 ssl
WANTLIB-main += harfbuzz icudata icule icuuc avahi-client avahi-common
WANTLIB-main += dbus-1

# python is only used by gtk-builder-convert, so let's not enforce the
# dependency
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gobject-introspection

RUN_DEPENDS-guic= ${RUN_DEPENDS} \
		x11/hicolor-icon-theme
LIB_DEPENDS-guic= graphics/gdk-pixbuf2
WANTLIB-guic += ${WANTLIB}
WANTLIB-guic += c pthread

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
REGRESS_IS_INTERACTIVE= x11

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2/ \
			-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--enable-introspection \
		--with-xinput \
		--disable-papi

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+2

pre-configure:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/gtk/gtk-builder-convert

.include <bsd.port.mk>
