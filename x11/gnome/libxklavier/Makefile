# $OpenBSD: Makefile,v 1.9 2007/07/05 22:50:11 jasper Exp $

COMMENT=		utility library for XKB

GNOME_PROJECT=		libxklavier
GNOME_VERSION=		3.2
SHARED_LIBS +=  xklavier             12.0     # .11.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp m xkbfile z

# XXX To be fixed
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libxklavier/3.2/}

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glib-2.0.>=1200.0,gobject-2.0.>=1200.0::devel/glib2 \
			xml2::textproc/libxml

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
