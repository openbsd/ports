# $OpenBSD: Makefile,v 1.8 2007/04/24 21:11:03 jasper Exp $

COMMENT=		"utility library for XKB"

DISTNAME=		libxklavier-3.2
SHARED_LIBS +=  xklavier             12.0     # .11.0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp m xkbfile z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libxklavier/3.2/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
LIB_DEPENDS=		glib-2.0.>=1200.0,gobject-2.0.>=1200.0::devel/glib2 \
			xml2::textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
