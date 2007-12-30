# $OpenBSD: Makefile,v 1.2 2007/12/30 22:52:19 jasper Exp $

COMMENT=		abstraction layer between apps and connection managers

DISTNAME=		telepathy-mission-control-4.51
SHARED_LIBS +=	missioncontrol-client 1.0      # .3.1
SHARED_LIBS +=	missioncontrol-server 0.1      # .3.5

HOMEPAGE=		http://mission-control.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mission-control/}

WANTLIB=	ORBit-2 c dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 pcre pthread telepathy-glib

MODULES=		devel/gettext

BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			telepathy.>=2::net/telepathy/libtelepathy

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
