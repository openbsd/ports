# $OpenBSD: Makefile,v 1.12 2010/04/23 12:42:53 jasper Exp $

COMMENT=		abstraction layer between apps and connection managers

DISTNAME=		telepathy-mission-control-5.4.0
SHARED_LIBS +=  mcclient              1.0      # .0.0

HOMEPAGE=		http://mission-control.sourceforge.net/

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-mission-control/}

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			telepathy-glib.>=5::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gnome-keyring=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
