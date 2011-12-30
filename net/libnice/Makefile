# $OpenBSD: Makefile,v 1.14 2011/12/30 14:05:31 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	GLib ICE implementation

DISTNAME =	libnice-0.1.0
REVISION =	1
SHARED_LIBS +=  nice                 1.1
CATEGORIES =	net

HOMEPAGE =	http://nice.freedesktop.org/

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

WANTLIB += c glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pcre
WANTLIB += xml2 z gstbase-0.10 gstreamer-0.10

MODULES =		devel/gettext

LIB_DEPENDS =		multimedia/gstreamer-0.10/core
BUILD_DEPENDS =		textproc/gsed

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-gupnp \
			--with-gstreamer

USE_GMAKE =		yes
USE_LIBTOOL =		yes
LIBTOOL_FLAGS =		--tag=disable-static

pre-configure:
	perl -pi -e 's,-Wextra,,g;' \
		-e 's,-Wno-missing-field-initializers,,g;' \
	${WRKSRC}/Makefile.in ${WRKSRC}/agent/Makefile.in \
	${WRKSRC}/nice/Makefile.in ${WRKSRC}/random/Makefile.in \
	${WRKSRC}/socket/Makefile.in ${WRKSRC}/stun/Makefile.in \
	${WRKSRC}/stun/tests/Makefile.in ${WRKSRC}/stun/tools/Makefile.in \
	${WRKSRC}/tests/Makefile.in

post-configure:
	perl -pi -e 's,/bin/bash,/bin/sh,' \
		${WRKSRC}/tests/test-pseudotcp-random.sh

.include <bsd.port.mk>
