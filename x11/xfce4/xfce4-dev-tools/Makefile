COMMENT =	Xfce4 developer tools and macros

XFCE_PROJECT =	xfce4-dev-tools

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4

BUILD_DEPENDS =	textproc/libxslt \
		devel/meson
RUN_DEPENDS =	devel/libtool \
		textproc/gtk-doc \
		textproc/intltool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		shells/bash \
		devel/git


AUTOMAKE_VERSION =	1.16
AUTOCONF_VERSION =	2.69
LIB_DEPENDS =	devel/glib2
WANTLIB = c glib-2.0 pcre2-8 pthread iconv intl

.include <bsd.port.mk>
