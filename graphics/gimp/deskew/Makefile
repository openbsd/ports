# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:59 sthen Exp $

COMMENT =		deskew plug-in for GIMP
DISTNAME =		gimp-deskew-plugin-0.0.20141025
GH_ACCOUNT =		prokoudine
GH_PROJECT =		gimp-deskew-plugin
GH_COMMIT =		b9214ddc8acf9ff5b01afdd44a9bdf96fe7d6e8e
REVISION =		3

CATEGORIES =		graphics x11

HOMEPAGE =		http://registry.gimp.org/node/2958

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gimp-2.0 gimpbase-2.0 gimpcolor-2.0
WANTLIB += gimpconfig-2.0 gimpmath-2.0 gimpmodule-2.0 gimpui-2.0
WANTLIB += gimpwidgets-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 ${COMPILER_LIBCXX}
WANTLIB += z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		textproc/intltool
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext,-tools
LIB_DEPENDS =		graphics/gimp/stable

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} autoheader
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} aclocal
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} automake --add-missing
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} autoconf
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} glib-gettextize --force
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} intltoolize --force --automake

.include <bsd.port.mk>
