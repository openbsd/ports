# $OpenBSD: Makefile,v 1.6 2013/11/17 11:32:10 ajacoutot Exp $

COMMENT =	library to deal with Japanese kana-to-kanji conversion

DISTNAME =	libskk-1.0.1

SHARED_LIBS =	skk	0.0 # 0.0

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/ueno/libskk/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi gee gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += json-glib-1.0 pcre pthread z

MASTER_SITES =	https://bitbucket.org/libskk/libskk/downloads/

MODULES =	devel/gettext \
		textproc/intltool
BUILD_DEPENDS =	devel/gobject-introspection \
		lang/vala
RUN_DEPENDS =	japanese/skk-jisyo
LIB_DEPENDS =	devel/libgee06 \
		devel/json-glib

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
