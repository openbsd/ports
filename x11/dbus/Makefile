# $OpenBSD: Makefile,v 1.169 2022/03/04 07:01:46 ajacoutot Exp $

# XXX merge on next major update
# https://gitlab.freedesktop.org/dbus/dbus/merge_requests/124/diffs

PORTROACH=		limitw:1,even
DPB_PROPERTIES=		parallel

COMMENT-main=		message bus system
COMMENT-suid=		DBus setuid helper for starting system services

V=			1.14.0
DISTNAME=		dbus-${V}
EXTRACT_SUFX=		.tar.xz
EPOCH-main=		0

PKGNAME-main=		${DISTNAME}
PKGNAME-suid=		dbus-daemon-launch-helper-${V}

SHARED_LIBS +=  dbus-1               11.3     # 35.0

CATEGORIES=		x11

HOMEPAGE=		http://dbus.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += c execinfo expat pthread

WANTLIB-main += ${WANTLIB} X11 xcb

WANTLIB-suid +=	${WANTLIB} dbus-1

MULTI_PACKAGES=		-main -suid

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MASTER_SITES=		https://dbus.freedesktop.org/releases/dbus/

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/xmlto

LIB_DEPENDS-suid=	${BASE_PKGPATH},-main

AUTOCONF_VERSION=	2.71
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-dbus-user=_dbus \
			--disable-doxygen-docs \
			--disable-ducktype-docs \
			--disable-modular-tests \
			--disable-systemd

# autolaunch brings too much magic to spawn a dbus-daemon(1) process and we want
# predictable buses; don't disable it yet because it breaks applications that
# require a user session and can't handle the lack of one (e.g. net/gpodder)
#CONFIGURE_ARGS +=	--disable-x11-autolaunch

# we can't use --without-x because this would break bus activated clients (since
# we don't use systemd)
#CONFIGURE_ARGS +=	--without-x

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
