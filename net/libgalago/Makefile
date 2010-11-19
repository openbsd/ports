# $OpenBSD: Makefile,v 1.8 2010/11/19 22:31:34 espie Exp $

COMMENT=		desktop presence framework

DISTNAME=		libgalago-0.5.2
REVISION=		2
SHARED_LIBS +=	galago               0.0      # .3.0
CATEGORIES=		net devel

HOMEPAGE=		http://www.galago-project.org/news/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.galago-project.org/files/releases/source/libgalago/

WANTLIB=		dbus-1 glib-2.0 gobject-2.0 pcre dbus-glib-1

MODULES=		devel/gettext

LIB_DEPENDS=		x11/dbus-glib
BUILD_DEPENDS=		devel/check>=0.9.5
REGRESS_DEPENDS=	${BUILD_DEPENDS}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-tests
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
