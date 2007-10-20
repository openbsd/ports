# $OpenBSD: Makefile,v 1.2 2007/10/20 12:37:33 espie Exp $

COMMENT=		desktop presence framework

DISTNAME=		libgalago-0.5.2
SHARED_LIBS +=	galago               0.0      # .3.0
CATEGORIES=		net devel

HOMEPAGE=		http://www.galago-project.org/news/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.galago-project.org/files/releases/source/libgalago/

WANTLIB=		dbus-1 glib-2.0 gobject-2.0

MODULES=		devel/gettext

LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib
BUILD_DEPENDS=		:check->=0.9.5:devel/check
REGRESS_DEPENDS=	${BUILD_DEPENDS}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-tests
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
