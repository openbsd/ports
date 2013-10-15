# $OpenBSD: Makefile,v 1.31 2013/10/15 09:43:54 ajacoutot Exp $

COMMENT=	library for bits of crypto UI and parsing

GNOME_PROJECT=	gcr
GNOME_VERSION=	3.10.0
REVISION=	1

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
WANTLIB += m p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS=		gi vala
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_MIME_FILE=	Yes

LIB_DEPENDS=	x11/gtk+3 \
		security/libgcrypt \
		security/p11-kit

# XXX push a proper fix upstream
BUILD_DEPENDS += textproc/gsed
pre-configure:
	perl -pi -e 's,sed -i,gsed -i,g' \
		${WRKSRC}/{,ui,ui/tests,gcr,gcr/tests,gck,gck/tests,egg,egg/tests}/Makefile.in \
		${WRKSRC}/Makefile.decl
	${SUBST_CMD} ${WRKSRC}/ui/Makefile.in

.include <bsd.port.mk>
