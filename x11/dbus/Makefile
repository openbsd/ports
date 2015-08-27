# $OpenBSD: Makefile,v 1.129 2015/08/27 06:46:46 ajacoutot Exp $

PORTROACH=		limitw:1,even
DPB_PROPERTIES=		parallel

COMMENT-main=		message bus system
COMMENT-suid=		DBus setuid helper for starting system services

V=			1.10.0
DISTNAME=		dbus-${V}
EPOCH-main=		0

PKGNAME-main=		${DISTNAME}
PKGNAME-suid=		dbus-daemon-launch-helper-${V}

SHARED_LIBS +=  dbus-1               11.1     # 17.3

CATEGORIES=		x11

HOMEPAGE=		http://dbus.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat pthread

WANTLIB-main += ${WANTLIB} ICE SM X11 xcb

WANTLIB-suid +=	${WANTLIB} dbus-1

MULTI_PACKAGES=		-main -suid

MASTER_SITES=		http://dbus.freedesktop.org/releases/dbus/

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/xmlto

LIB_DEPENDS-suid=	${BASE_PKGPATH},-main

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-dbus-user=_dbus \
			--disable-doxygen-docs \
			--disable-ducktype-docs \
			--disable-modular-tests \
			--disable-systemd

# gives no chance of picking up devel/libexecinfo
CONFIGURE_ENV +=	ac_cv_header_execinfo_h=no \
			ac_cv_func_backtrace=no

# Full test coverage is disabled:
# * changes the final dbus binaries
# * requires py-gobject and dbus-python (dependency loop)
# * requires the python MODULE
#MODULES +=		lang/python
#TEST_DEPENDS +=	devel/py-gobject3
#BUILD_DEPENDS +=	devel/py-gobject3
#CONFIGURE_ARGS+=	--enable-developer
#CONFIGURE_ARGS+=	--enable-modular-tests
#CONFIGURE_ARGS+=	--enable-tests
#CONFIGURE_ARGS+=	--enable-verbose-mode

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/dbus

post-install:
	rm -r ${WRKINST}/var/{lib,run/dbus}

.include <bsd.port.mk>
