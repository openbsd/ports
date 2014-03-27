# $OpenBSD: Makefile,v 1.3 2014/03/27 10:58:21 jasper Exp $

COMMENT=		modular geoinformation service on top of D-Bus

VERSION=		2.1.7
DISTNAME=		geoclue-${VERSION}
PKGNAME=		geoclue2-${VERSION}
CATEGORIES=		geo devel

HOMEPAGE=		http://geoclue.freedesktop.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://freedesktop.org/software/geoclue/releases/${VERSION:R}/
EXTRACT_SUFX=		.tar.xz

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 json-glib-1.0
WANTLIB += m pcre pthread soup-2.4 sqlite3 xml2 z

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS =		devel/libsoup \
			devel/json-glib
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc

# disable all components requiring ModemManager
CONFIGURE_ARGS +=	--disable-3g-source \
			--disable-wifi-source \
			--disable-modem-gps-source
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		DBUS_SYS_DIR=${PREFIX}/share/examples/geoclue/

# don't install the demo agent .desktop file (agent requires MM)
FAKE_FLAGS +=		apps_DATA=geoclue-where-am-i.desktop

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
