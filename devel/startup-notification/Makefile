# $OpenBSD: Makefile,v 1.31 2021/06/09 19:50:07 sthen Exp $

COMMENT=		library for tracking application startup

GNOME_PROJECT=		startup-notification
GNOME_VERSION=		0.12
REVISION=		7

CATEGORIES=		devel

SHARED_LIBS +=  startup-notification-1 2.0      # .0.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/startup-notification

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 X11-xcb Xau Xdmcp xcb xcb-util

MODULES=		x11/gnome

CONFIGURE_STYLE=	gnu

# XXX libexecinfo is only needed for regression tests. We do not want to
# add -lexecinfo to LDFLAGS because the main startup-notification
# library does not use/need it, so we just define HAVE_BACKTRACE.
# (see patch-test_Makefile_in)

# XXX NEEDS REVIEW - LIBEXECINFO IN BASE

CFLAGS +=		-DHAVE_BACKTRACE

.include <bsd.port.mk>
