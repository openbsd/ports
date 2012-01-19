# $OpenBSD: Makefile,v 1.40 2012/01/19 15:37:08 ajacoutot Exp $

COMMENT=		utility library for XKB

GNOME_PROJECT=		libxklavier
GNOME_VERSION=		5.2
REVISION=		1

SHARED_LIBS +=  xklavier             17.0     # .17.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi ffi glib-2.0 gobject-2.0 gthread-2.0 m
WANTLIB += pcre xcb xkbfile xml2 z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		goi

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/iso-codes
LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_ARGS+=	--with-xkb-base="${X11BASE}/share/X11/xkb/" \
			--with-xkb-bin-base="${X11BASE}/bin/" \
			--with-xmodmap-base="/usr/share/xmodmap"
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
