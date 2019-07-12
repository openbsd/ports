# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:44 sthen Exp $

COMMENT =	programs providing a simple interface to inotify
DISTNAME =	inotify-tools-3.14pl0
CATEGORIES =	sysutils

GH_ACCOUNT =	rvoicilas
GH_PROJECT =	inotify-tools
GH_COMMIT =	1df9af4d6cd0f4af4b1b19254bcf056aed4ae395
SHARED_LIBS =	inotifytools 0.0 # 4.1

# GPLv2
PERMIT_PACKAGE =	Yes

AUTOMAKE_VERSION =	1.9
AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/inotify/" \
			LDFLAGS="-L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath ${LOCALBASE}/lib/inotify"
CONFIGURE_ARGS =	--disable-doxygen
LIB_DEPENDS =		devel/libinotify
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
WANTLIB +=		lib/inotify/inotify c pthread

pre-configure:
	cd ${WRKSRC} && \
		libtoolize && \
		env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

.include <bsd.port.mk>
