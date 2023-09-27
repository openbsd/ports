ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	freedesktop-compliant panel

V=		17.0.2
CATEGORIES=	x11
DISTNAME=	tint2-${V}
HOMEPAGE=	https://gitlab.com/o9000/tint2/
REVISION=	0

# GPLv2 only
PERMIT_PACKAGE=	Yes

SITES=		https://gitlab.com/o9000/tint2/-/archive/${V}/

WANTLIB += Imlib2 X11 Xcomposite Xdamage Xext Xfixes Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo cairo-gobject gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz intl m pango-1.0 pangocairo-1.0 pthread
WANTLIB += rsvg-2 startup-notification-1

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/pango \
		devel/startup-notification \
		x11/gnome/librsvg \
		graphics/imlib2 \
		x11/gtk+3

MODULES=	devel/cmake \
		x11/gnome

MODGNOME_TOOLS+= desktop-file-utils \
		gtk-update-icon-cache \
		shared-mime-info

NO_TEST=	Yes

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
