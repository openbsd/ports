COMMENT =		library to deal with Japanese kana-to-kanji conversion

V =			1.0.5
DISTNAME =		libskk-${V}
EXTRACT_SUFX =		.tar.xz

SHARED_LIBS +=  skk                  0.1      # 0.0

CATEGORIES =		inputmethods japanese

HOMEPAGE =		https://github.com/ueno/libskk/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c ffi gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl json-glib-1.0 pcre pthread xkbcommon z

MASTER_SITES =		https://github.com/ueno/libskk/releases/download/${V}/

MODULES =		textproc/intltool

USE_GMAKE =		Yes

BUILD_DEPENDS =		devel/gobject-introspection \
			lang/vala

RUN_DEPENDS =		japanese/skk-jisyo

LIB_DEPENDS =		devel/libgee \
			devel/json-glib \
			x11/xkbcommon

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
