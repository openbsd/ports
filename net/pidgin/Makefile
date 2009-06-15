# $OpenBSD: Makefile,v 1.42 2009/06/15 21:41:27 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	multi-protocol instant messaging client

DISTNAME=	pidgin-2.5.6
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pidgin/}

SHARED_LIBS=	jabber		0.0 \
		oscar		0.0 \
		purple		4.6 \
		purple-client	4.6 \
		gnt		4.6

HOMEPAGE=	http://pidgin.im/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xss atk-1.0 \
		c cairo crypto dbus-1 expat fontconfig freetype \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 m ncurses panel pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread ssl stdc++ z

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python \
		devel/gconf2

BUILD_DEPENDS=	:dbus-python-*:x11/dbus-python
RUN_DEPENDS+=	:dbus-python-*:x11/dbus-python \
		:py-gtk2-*:x11/py-gtk2 \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		startup-notification-1::devel/startup-notification \
		silc.>=7,silcclient.>=5::devel/silc-toolkit \
		meanwhile::net/meanwhile \
		gadu.>=4::net/libgadu \
		xml2::textproc/libxml \
		dbus-glib-1::x11/dbus-glib

MODGCONF2_SCHEMAS_DIR= pidgin
MODGCONF2_LIBDEP= No

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= --disable-avahi \
		 --disable-doxygen \
		 --disable-gevolution \
		 --disable-gnutls \
		 --disable-nm \
		 --disable-nss \
		 --disable-perl \
		 --disable-tcl \
		 --disable-tk \
		 --disable-cap \
		 --with-python=${MODPY_BIN}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_db_dbopen=no

MAKE_FLAGS+=	CFLAGS="${CFLAGS}"

# XXX prevent a fatal error at install phase
CONFIGURE_ARGS+= --disable-schemas-install

FLAVORS=	audio debug gtkspell
FLAVOR?=	

.if ${FLAVOR:L:Maudio}
LIB_DEPENDS+=		gstreamer-0.10:gstreamer-0.10.*:multimedia/gstreamer-0.10/core
.else
CONFIGURE_ARGS+=	--disable-gstreamer
# --disable-gstreamer is not sufficient
MAKE_FLAGS+=    GSTREAMER_CFLAGS= GSTREAMER_LIBS=
.endif

.if ${FLAVOR:L:Mdebug}
CFLAGS+=	-O0
CONFIGURE_ARGS+=--enable-debug --disable-mcheck
INSTALL_STRIP=
.endif

.if ${FLAVOR:L:Mgtkspell}
LIB_DEPENDS+=	gtkspell::textproc/gtkspell
WANTLIB+=	enchant
.else
CONFIGURE_ARGS+=--disable-gtkspell
.endif

post-extract:
	@cp ${FILESDIR}/ssl-openssl.c ${WRKSRC}/libpurple/plugins/ssl

post-build:
	cp ${FILESDIR}/purple.service ${WRKSRC}
	${SUBST_CMD} ${WRKSRC}/libpurple/purple-remote \
		     ${WRKSRC}/libpurple/purple-url-handler \
		     ${WRKSRC}/purple.service

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dbus-1/services
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/purple.service \
	    ${PREFIX}/share/dbus-1/services
	mv ${PREFIX}/lib/purple-2/libjabber.* ${PREFIX}/lib
	mv ${PREFIX}/lib/purple-2/liboscar.* ${PREFIX}/lib

.include <bsd.port.mk>
