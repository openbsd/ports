# $OpenBSD: Makefile,v 1.39 2012/01/19 14:25:10 ajacoutot Exp $

COMMENT=		utility library for XKB

GNOME_PROJECT=		libxklavier
GNOME_VERSION=		5.2
REVISION=		0

SHARED_LIBS +=  xklavier             17.0     # .17.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi m pcre xkbfile z ffi
WANTLIB += xcb glib-2.0 gthread-2.0 gobject-2.0 xml2

MODULES=		devel/gettext \
			x11/gnome

# XXX -I. -I.. missing?
# /usr/ports/pobj/libxklavier-5.2/libxklavier-5.2/libxklavier/xkl_config_registry.h:24:36:
# error: libxklavier/xkl_engine.h: No such file or directory
#MODGNOME_TOOLS=		goi

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/iso-codes
LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_ARGS+=	--with-xkb-base="${X11BASE}/share/X11/xkb/" \
			--with-xkb-bin-base="${X11BASE}/bin/" \
			--with-xmodmap-base="/usr/share/xmodmap"
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
