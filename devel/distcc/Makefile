# $OpenBSD: Makefile,v 1.2 2017/04/16 19:29:27 jasper Exp $

COMMENT-main =		distributed builds for C, C++ and Objective C
COMMENT-gtk =		GTK+ monitor for distcc
COMMENT-server =	distcc server

# latest commit to master
GH_COMMIT =		267fe5be154ca375ac574875894b476b60f19af0
GH_PROJECT =		distcc
GH_ACCOUNT =		distcc
VERSION =		3.2.0-rc1
DISTNAME =		distcc-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-gtk =		distcc-gtk-${VERSION}
PKGNAME-server =	distcc-server-${VERSION}
CATEGORIES =		devel net

HOMEPAGE =		https://github.com/distcc/distcc

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -gtk -server

MODULES =		devel/gettext \
			lang/python
# Only -main needs an RDEP
MODPY_RUNDEP =		No

WANTLIB +=		c popt pthread
LIB_DEPENDS =		devel/popt

LIB_DEPENDS-main =	${LIB_DEPENDS}
RUN_DEPENDS-main +=	${MODPY_RUN_DEPENDS}
WANTLIB-main =		${WANTLIB} ${MODPY_WANTLIB}

WANTLIB-server =	${WANTLIB}
LIB_DEPENDS-server =	${LIB_DEPENDS}

LIB_DEPENDS-gtk =	${MODGETTEXT_LIB_DEPENDS} \
			${LIB_DEPENDS} \
			x11/gtk+2
RUN_DEPENDS-gtk =	${MODGETTEXT_LIB_DEPENDS} \
			devel/desktop-file-utils
WANTLIB-gtk +=		${WANTLIB} X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-gtk +=		Xinerama Xrandr Xrender atk-1.0 cairo fontconfig freetype
WANTLIB-gtk +=		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-gtk +=		gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--without-libiberty \
			--without-avahi \
			--with-gtk

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/"

# autohell
AUTOCONF_VERSION =      2.62
AUTOMAKE_VERSION =      1.11
BUILD_DEPENDS +=        ${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	@cd ${WRKSRC} && \
	env \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		    	/bin/sh ./autogen.sh
# /autohell

# remove RH junk
post-install:
	rm -r ${PREFIX}/share/examples/default

.include <bsd.port.mk>
