COMMENT =		japanese input engine for ibus

GH_ACCOUNT =		ibus
GH_PROJECT =		ibus-anthy
GH_TAGNAME =		1.5.16
REVISION =		1

SHARED_LIBS +=  anthygobject-1.0     1.1      # 5.516

CATEGORIES =		inputmethods japanese

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += anthy anthydic ffi glib-2.0 gobject-2.0 iconv intl
WANTLIB += m pcre2-8 pthread

MODULES =		devel/dconf \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/ibus

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/ibus \
			x11/gtk+4,-guic

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
