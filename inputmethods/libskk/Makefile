# $OpenBSD: Makefile,v 1.7 2014/10/13 12:27:30 ajacoutot Exp $

COMMENT =	library to deal with Japanese kana-to-kanji conversion

V =		1.0.2
DISTNAME =	libskk-${V}

SHARED_LIBS =	skk	0.0 # 0.0

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/ueno/libskk/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += json-glib-1.0 pcre pthread z

MASTER_SITES =	https://github.com/ueno/libskk/releases/download/${V}/

MODULES =	devel/gettext \
		textproc/intltool
BUILD_DEPENDS =	devel/gobject-introspection \
		lang/vala
RUN_DEPENDS =	japanese/skk-jisyo
LIB_DEPENDS =	devel/libgee \
		devel/json-glib

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
