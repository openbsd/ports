# $OpenBSD: Makefile,v 1.128 2015/07/22 18:09:17 ajacoutot Exp $

PORTROACH=		limitw:1,even
DPB_PROPERTIES=		parallel

COMMENT-main=		message bus system
COMMENT-suid=		DBus setuid helper for starting system services

V=			1.8.20
DISTNAME=		dbus-${V}
EPOCH-main=		0

PKGNAME-main=		${DISTNAME}
PKGNAME-suid=		dbus-daemon-launch-helper-${V}

SHARED_LIBS +=  dbus-1               11.0     # 11.3

CATEGORIES=		x11

HOMEPAGE=		http://dbus.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat pthread

WANTLIB-main += ${WANTLIB} ICE SM X11 xcb

MULTI_PACKAGES=		-main -suid

MASTER_SITES=		http://dbus.freedesktop.org/releases/dbus/

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/xmlto

RUN_DEPENDS-suid=	${BASE_PKGPATH},-main

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-dbus-user=_dbus \
			--disable-doxygen-docs \
			--disable-modular-tests \
			--without-dbus-glib

# gives no chance of picking up devel/libexecinfo
CONFIGURE_ENV +=	ac_cv_header_execinfo_h=no \
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

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/dbus

post-install:
	rm -r ${WRKINST}/var/{lib,run/dbus}

.include <bsd.port.mk>
