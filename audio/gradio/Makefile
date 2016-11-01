# $OpenBSD: Makefile,v 1.2 2016/11/01 10:55:14 ajacoutot Exp $

COMMENT =	internet radio browser and player
DISTNAME =	gradio-5.0.0beta2
GH_ACCOUNT =	haecker-felix
GH_PROJECT =	gradio
GH_TAGNAME =	v5.0.0-beta2

CATEGORIES =	audio www

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	devel/gettext-tools
LIB_DEPENDS =	www/webkitgtk4

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gtk-3 intl javascriptcoregtk-4.0 json-glib-1.0 pango-1.0
WANTLIB += pangocairo-1.0 pthread soup-2.4 webkit2gtk-4.0

CONFIGURE_STYLE =	gnu
NO_TEST =		Yes
USE_GMAKE =		Yes

AUTOMAKE_VERSION =	1.14
AUTOCONF_VERSION =	2.65
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && env NOCONFIGURE=yes \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh


.include <bsd.port.mk>
