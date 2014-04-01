# $OpenBSD: Makefile,v 1.36 2014/04/01 17:03:14 jasper Exp $

COMMENT=	library for bits of crypto UI and parsing

GNOME_PROJECT=	gcr
GNOME_VERSION=	3.12.0

SHARED_LIBS +=  gck-1                1.0      # 0.0
SHARED_LIBS +=  gcr-base-3           2.0      # 1.0
SHARED_LIBS +=  gcr-ui-3             2.0      # 1.0
SHARED_LIBS +=  gcr-3                2.0      # 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS=		gobject-introspection vala
MODGNOME_TOOLS +=	desktop-file-utils
MODGNOME_TOOLS +=	gtk-update-icon-cache
MODGNOME_TOOLS +=	shared-mime-info

LIB_DEPENDS=	x11/gtk+3 \
		security/libgcrypt \
		security/p11-kit

BUILD_DEPENDS=	security/gnupg
RUN_DEPENDS=	security/gnupg

# Need xsltproc in order to build with gobject introspection
BUILD_DEPENDS += textproc/libxslt

# XXX push a proper fix upstream
BUILD_DEPENDS += textproc/gsed
pre-configure:
	perl -pi -e 's,sed -i,gsed -i,g' ${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/Makefile.in

# regression tests call 'env python'
MODULES +=		lang/python
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
