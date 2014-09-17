# $OpenBSD: Makefile,v 1.118 2014/09/17 05:49:15 ajacoutot Exp $

# DPB: not parallel-safe

COMMENT=	message bus system

DISTNAME=	dbus-1.8.8
EPOCH=		0

SHARED_LIBS +=  dbus-1               11.0     # 11.3

CATEGORIES=	x11
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://dbus.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 c expat pthread xcb

MASTER_SITES=	${HOMEPAGE}releases/dbus/

USE_GMAKE=	Yes

BUILD_DEPENDS=	textproc/xmlto

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-dbus-user=_dbus \
		--disable-doxygen-docs \
		--disable-modular-tests \
		--without-dbus-glib

# gives no chance of picking up devel/libexecinfo
CONFIGURE_ENV+=	ac_cv_header_execinfo_h=no \
		ac_cv_func_backtrace=no

# Full test coverage is disabled:
# * changes the final dbus binaries
# * requires py-gobject and dbus-python (dependency loop)
# * requires the python MODULE
#MODULES +=		lang/python
#TEST_DEPENDS +=	devel/py-gobject x11/dbus-glib
#BUILD_DEPENDS +=	devel/py-gobject x11/dbus-glib
#CONFIGURE_ARGS+=	--enable-tests
#CONFIGURE_ARGS+=	--enable-verbose-mode
#CONFIGURE_ARGS+=	--enable-modular-tests
#CONFIGURE_ARGS+=	--with-dbus-glib

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/dbus

post-install:
	rm -r ${WRKINST}/var/{lib,run/dbus}

.include <bsd.port.mk>
