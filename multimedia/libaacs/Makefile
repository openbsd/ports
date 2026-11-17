COMMENT =		AACS support library for Blu-ray playback

V =			0.12.0
DISTNAME =		libaacs-${V}

CATEGORIES =		multimedia

HOMEPAGE =		https://www.videolan.org/developers/libaacs.html
SITES =			https://download.videolan.org/pub/videolan/libaacs/${V}/
EXTRACT_SUFX =		.tar.xz

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  c gcrypt gpg-error iconv intl udfread

SHARED_LIBS +=		aacs	3.2	# 5.1

LIB_DEPENDS =		multimedia/libudfread \
			security/libgcrypt
BUILD_DEPENDS =		devel/bison

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--disable-optimizations

YACC =			${LOCALBASE}/bin/bison -y

.include <bsd.port.mk>
