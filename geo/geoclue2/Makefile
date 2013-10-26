# $OpenBSD: Makefile,v 1.2 2013/10/26 08:02:57 ajacoutot Exp $

COMMENT=		modular geoinformation service on top of D-Bus

VERSION=		2.0.0
DISTNAME=		geoclue-${VERSION}
PKGNAME=		geoclue2-${VERSION}
CATEGORIES=		geo devel
REVISION=		0

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

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		DBUS_SYS_DIR=${PREFIX}/share/examples/geoclue/

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
