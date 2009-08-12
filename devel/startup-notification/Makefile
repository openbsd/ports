# $OpenBSD: Makefile,v 1.13 2009/08/12 15:52:17 ajacoutot Exp $

COMMENT=		library for tracking application startup

DISTNAME=		startup-notification-0.10
CATEGORIES=		devel x11

SHARED_LIBS +=  startup-notification-1 2.0      # .0.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/startup-notification

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp pthread-stubs xcb xcb-atom xcb-aux
WANTLIB += xcb-event

MASTER_SITES=		http://www.freedesktop.org/software/startup-notification/releases/

LIB_DEPENDS=		execinfo::devel/libexecinfo

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lexecinfo"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
