# $OpenBSD: Makefile,v 1.2 2017/09/22 21:30:32 sthen Exp $

COMMENT =	wallpaper setting utility for X

GH_ACCOUNT =	stoeckmann
GH_PROJECT =	xwallpaper
GH_TAGNAME =	v0.2.1
REVISION =	0

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
