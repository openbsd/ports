# $OpenBSD: Makefile,v 1.51 2009/08/20 10:43:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multi-protocol instant messaging client
COMMENT-finch=	multi-protocol instant messaging client, console client
COMMENT-libpurple= multi-protocol instant messaging library

VERSION=	2.5.9
DISTNAME=	pidgin-${VERSION}
PKGNAME=	pidgin-${VERSION}
PKGNAME-main=	pidgin-${VERSION}
PKGNAME-finch=	finch-${VERSION}
FULLPKGNAME-libpurple= libpurple-${VERSION}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pidgin/}

SHARED_LIBS=	jabber		0.0 \
		oscar		0.0 \
		purple		4.7 \
		purple-client	4.7 \
		gnt		4.7

HOMEPAGE=	http://pidgin.im/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 iconv intl m ncurses pcre pthread xml2 z

WANTLIB-main=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xss atk-1.0 cairo \
		execinfo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glitz gtk-x11-2.0 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs \
		stdc++ xcb xcb-atom xcb-aux xcb-event ${WANTLIB}

WANTLIB-libpurple= crypto ssl ${WANTLIB}

WANTLIB-finch=	X11 Xau Xdmcp panel pthread-stubs xcb ${WANTLIB}

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python \
		devel/gconf2

BUILD_DEPENDS=		::x11/dbus-python
RUN_DEPENDS-main=	::x11/dbus-python \
			::x11/py-gtk2 \
			::devel/desktop-file-utils
LIB_DEPENDS-main=	startup-notification-1::devel/startup-notification \
			purple:libpurple-${VERSION}:${BUILD_PKGPATH},-libpurple
LIB_DEPENDS-finch=	purple:libpurple-${VERSION}:${BUILD_PKGPATH},-libpurple
RUN_DEPENDS-finch=	# empty
LIB_DEPENDS-libpurple=	silc.>=7,silcclient.>=5::devel/silc-toolkit \
			meanwhile::net/meanwhile \
			gadu.>=4::net/libgadu
RUN_DEPENDS-libpurple=	${MODGCONF2_RUN_DEPENDS}

MODGCONF2_SCHEMAS_DIR=	pidgin
MODGCONF2_LIBDEP=	No

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
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
# XXX prevent a fatal error at install phase
CONFIGURE_ARGS+= --disable-schemas-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_db_dbopen=no

MAKE_FLAGS+=	CFLAGS="${CFLAGS}"

FLAVORS=	audio gtkspell
FLAVOR?=	

MULTI_PACKAGES= -main -finch -libpurple

.if ${FLAVOR:L:Maudio}
LIB_DEPENDS-main+=	gstreamer-0.10:gstreamer->=0.10,<=0.11:multimedia/gstreamer-0.10/core
LIB_DEPENDS-finch+=	gstreamer-0.10:gstreamer->=0.10,<=0.11:multimedia/gstreamer-0.10/core
.else
CONFIGURE_ARGS+=	--disable-gstreamer
# --disable-gstreamer is not sufficient
MAKE_FLAGS+=    GSTREAMER_CFLAGS= GSTREAMER_LIBS=
.endif

.if ${FLAVOR:L:Mgtkspell}
LIB_DEPENDS-main+=	gtkspell::textproc/gtkspell
WANTLIB-main+=		enchant
.else
CONFIGURE_ARGS+=	--disable-gtkspell
.endif

.if defined(DEBUG)
CONFIGURE_ARGS+=	--enable-debug \
			--disable-mcheck
INSTALL_STRIP=
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
