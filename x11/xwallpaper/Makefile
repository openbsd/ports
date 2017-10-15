# $OpenBSD: Makefile,v 1.3 2017/10/15 10:18:57 rsadowski Exp $

COMMENT =	wallpaper setting utility for X

GH_ACCOUNT =	stoeckmann
GH_PROJECT =	xwallpaper
GH_TAGNAME =	v0.2.2

CATEGORIES =	x11 graphics

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += X11 Xpm c jpeg pixman-1 png pthread-stubs xcb xcb-image
WANTLIB += xcb-randr xcb-shm xcb-util z

LIB_DEPENDS +=	graphics/jpeg \
		graphics/png

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf --install

.include <bsd.port.mk>
