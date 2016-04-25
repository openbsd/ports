# $OpenBSD: Makefile,v 1.51 2016/04/25 10:31:49 ajacoutot Exp $

COMMENT=		library for bits of crypto UI and parsing

GNOME_PROJECT=		gcr
GNOME_VERSION=		3.20.0

SHARED_LIBS +=  gck-1                1.2      # 0.0
SHARED_LIBS +=  gcr-base-3           2.2      # 1.0
SHARED_LIBS +=  gcr-ui-3             2.2      # 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl m p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection
MODGNOME_TOOLS +=	gtk-update-icon-cache shared-mime-info vala

LIB_DEPENDS=		x11/gtk+3 \
			security/libgcrypt \
			security/p11-kit

BUILD_DEPENDS +=	gnupg->=2:security/gnupg2
RUN_DEPENDS +=		gnupg->=2:security/gnupg2
CONFIGURE_ENV +=	ac_cv_path_GNUPG=${LOCALBASE}/bin/gpg2

# Need xsltproc in order to build with gobject introspection
BUILD_DEPENDS +=	textproc/libxslt

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
