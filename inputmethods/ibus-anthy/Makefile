# $OpenBSD: Makefile,v 1.27 2020/07/03 21:12:56 sthen Exp $

COMMENT =		japanese input engine for ibus

GH_ACCOUNT =		ibus
GH_PROJECT =		ibus-anthy
GH_TAGNAME =		1.5.11
REVISION =		0

SHARED_LIBS =	anthygobject-1.0	1.1 # 5.511

CATEGORIES =		inputmethods japanese

HOMEPAGE =		https://github.com/fujiwarat/ibus-anthy/wiki

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += anthy anthydic ffi glib-2.0 gobject-2.0 iconv intl
WANTLIB += m pcre pthread

MODULES =		devel/dconf \
			lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/ibus

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/ibus \
			x11/gtk+3,-guic

LIB_DEPENDS =		inputmethods/anthy

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS = 	--with-kasumi-exec=${LOCALBASE}/bin/kasumi \
		 	--with-kasumi-icon=${LOCALBASE}/share/pixmaps/kasumi.png

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
