# $OpenBSD: Makefile,v 1.10 2009/01/20 10:43:53 jasper Exp $

COMMENT=		abstraction layer between apps and connection managers

DISTNAME=		telepathy-mission-control-4.67
PKGNAME=		${DISTNAME}p2
SHARED_LIBS +=  mcclient              0.0      # .5.0
SHARED_LIBS +=  missioncontrol-client 2.0      # .4.3
SHARED_LIBS +=  missioncontrol-server 1.0      # .4.1

HOMEPAGE=		http://mission-control.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mission-control/}

WANTLIB=	ORBit-2 c dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 pcre pthread telepathy-glib

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			telepathy.>=2::net/telepathy/libtelepathy

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-keyring=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
