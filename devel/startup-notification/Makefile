# $OpenBSD: Makefile,v 1.24 2014/03/09 22:29:01 ajacoutot Exp $

COMMENT=		library for tracking application startup

DISTNAME=		startup-notification-0.12
CATEGORIES=		devel x11
REVISION=		2

SHARED_LIBS +=  startup-notification-1 2.0      # .0.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/startup-notification

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 X11-xcb Xau Xdmcp pthread-stubs xcb xcb-aux

MASTER_SITES=		http://www.freedesktop.org/software/startup-notification/releases/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

# XXX libexecinfo is only needed for regression tests. We do not want to
# add -lexecinfo to LDFLAGS because the main startup-notification
# library does not use/need it, so we just define HAVE_BACKTRACE.
# (see patch-test_Makefile_in)
TEST_DEPENDS=		devel/libexecinfo
CFLAGS +=		-DHAVE_BACKTRACE

.include <bsd.port.mk>
