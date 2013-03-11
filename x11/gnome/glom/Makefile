# $OpenBSD: Makefile,v 1.29 2013/03/11 11:46:10 espie Exp $

COMMENT=		GNOME database designer and user interface

GNOME_PROJECT=		glom
GNOME_VERSION=		1.22.1
REVISION=		0

SHARED_LIBS +=  glom-1.22                 0.0 # 0.0

API_V=			1.22
SUBST_VARS+=		API_V

CATEGORIES=		databases

HOMEPAGE=		http://www.glom.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += avahi-client avahi-common avahi-glib boost_python c cairo
WANTLIB += cairo-gobject cairomm-1.0 dbus-1 drm e2fs-uuid epc-1.0 evdocument3
WANTLIB += evview3 expat ffi fontconfig freetype gailutil-3 gcrypt
WANTLIB += gda-5.0 gdamm-5.0 gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gettextpo
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gmp
WANTLIB += gnutls gobject-2.0 goocanvas-2.0 goocanvasmm-2.0
WANTLIB += gpg-error gthread-2.0 gtk-3 gtkmm-3.0 gtksourceview-3.0
WANTLIB += gtksourceviewmm-3.0 hogweed m nettle p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pixman-1 png pthread pthread-stubs python2.7 sigc-2.0
WANTLIB += soup-2.4 stdc++ tasn1 util xcb xcb-render xcb-shm xml++-2.6
WANTLIB += xml2 xslt z icuuc secret-1
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

BUILD_DEPENDS=		databases/postgresql,-server \
			devel/iso-codes \
			devel/py-gobject3 \
			textproc/py-sphinx \
			x11/gnome/libgda,-pgsql>=5.0.3v0
RUN_DEPENDS=		databases/postgresql,-server \
			devel/py-gobject3 \
			misc/shared-mime-info \
			x11/gnome/libgda,-pgsql>=5.0.3v0
LIB_DEPENDS=		devel/boost \
			graphics/evince \
			graphics/goocanvasmm2>=1.90.8 \
			net/libepc \
			textproc/libxml++ \
			x11/gnome/libgdamm>=4.99.6 \
			x11/gtksourceviewmm3

CONFIGURE_ENV+= 	ac_cv_path_DOT= \
			ac_cv_path_XSLTPROC= \
			ac_cv_path_DOXYGEN=
CONFIGURE_ARGS+=	--disable-update-mime-database

TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
