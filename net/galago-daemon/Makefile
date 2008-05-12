# $OpenBSD: Makefile,v 1.1.1.1 2008/05/12 14:45:07 jasper Exp $

COMMENT=		galago presence daemon

DISTNAME=		galago-daemon-0.5.1
CATEGORIES=		net devel

HOMEPAGE=		http://www.galago-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.galago-project.org/files/releases/source/galago-daemon/

WANTLIB=		c dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 iconv intl \
			pthread

LIB_DEPENDS=		galago::net/libgalago
BUILD_DEPENDS=		${REGRESS_DEPENDS}
REGRESS_DEPENDS=	::devel/check

USE_GMAKE=		Yes
USE_LIBTOOL=    	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-check=${LOCALBASE} \
			--with-dbus-sys=${PREFIX}/share/examples/galago-daemon
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
