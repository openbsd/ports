# $OpenBSD: Makefile,v 1.1.1.1 2007/10/27 16:18:54 jasper Exp $

COMMENT=		abstraction layer between apps and connection managers

DISTNAME=		telepathy-mission-control-4.45
SHARED_LIBS +=	missioncontrol-client 0.0      # .2.2
SHARED_LIBS +=	missioncontrol-server 0.0      # .3.0

HOMEPAGE=		http://mission-control.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mission-control/}

WANTLIB=	ORBit-2 c dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 pcre pthread

MODULES=		devel/gettext

BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			telepathy::net/telepathy/libtelepathy

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
