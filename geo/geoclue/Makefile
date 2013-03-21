# $OpenBSD: Makefile,v 1.20 2013/03/21 08:45:17 ajacoutot Exp $

COMMENT=		modular geoinformation service on top of D-Bus

DISTNAME=		geoclue-0.12.99
REVISION=		0
SHARED_LIBS +=  geoclue              1.1      # .0.0
CATEGORIES=		geo devel

HOMEPAGE=		http://geoclue.freedesktop.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://freedesktop.org/~hadess/

MODULES=		devel/dconf \
			devel/gettext

WANTLIB += c dbus-1 dbus-glib-1 ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gps gthread-2.0
WANTLIB += m pcre pthread soup-2.4 soup-gnome-2.4 sqlite3 xml2
WANTLIB += z

BUILD_DEPENDS =		textproc/libxslt
LIB_DEPENDS =		devel/libsoup,-gnome \
			misc/gpsd \
			x11/dbus-glib

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-gtk \
			--disable-connman
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
