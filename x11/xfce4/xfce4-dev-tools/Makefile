COMMENT =	Xfce4 developer tools and macros

XFCE_PROJECT =	xfce4-dev-tools
REVISION =	2
HOMEPAGE =	https://docs.xfce.org/xfce/xfce4-dev-tools/start

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4

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
WANTLIB = c glib-2.0 pcre pthread iconv intl

.include <bsd.port.mk>
