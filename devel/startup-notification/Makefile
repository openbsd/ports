# $OpenBSD: Makefile,v 1.17 2011/05/23 12:06:10 ajacoutot Exp $

COMMENT=		library for tracking application startup

DISTNAME=		startup-notification-0.12
CATEGORIES=		devel x11

SHARED_LIBS +=  startup-notification-1 2.0      # .0.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/startup-notification

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 X11-xcb Xau Xdmcp execinfo m pthread-stubs xcb
WANTLIB += xcb-aux

MASTER_SITES=		http://www.freedesktop.org/software/startup-notification/releases/

LIB_DEPENDS=		devel/libexecinfo

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lexecinfo"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
