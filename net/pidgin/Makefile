# $OpenBSD: Makefile,v 1.89 2011/03/11 00:13:04 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multi-protocol instant messaging client
COMMENT-finch=	multi-protocol instant messaging client, console client
COMMENT-libpurple= multi-protocol instant messaging library

VERSION=	2.7.10
DISTNAME=	pidgin-${VERSION}
PKGNAME-main=	pidgin-${VERSION}
PKGNAME-finch=	finch-${VERSION}
PKGNAME-libpurple= libpurple-${VERSION}
.for i in -finch -libpurple
FULLPKGNAME$i= ${PKGNAME$i}${FLAVOR_EXT:S/-gtkspell//}
FULLPKGPATH$i= ${PKGPATH},$i${FLAVOR_EXT:S/-gtkspell//:S/-/,/g}
.endfor
REVISION-main=	0
REVISION-finch=	0
REVISION-libpurple= 0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pidgin/}

SHARED_LIBS=	jabber		0.0 \
		oscar		0.0 \
		purple		5.1 \
		purple-client	5.1 \
		gnt		6.0 \
		ymsg		0.0

HOMEPAGE=	http://pidgin.im/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 m pcre pthread util xml2 z

WANTLIB-main=	GL X11 Xau Xdmcp ICE SM Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xss Xxf86vm atk-1.0 cairo \
		drm execinfo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread-stubs stdc++ xcb-atom \
		startup-notification-1 purple xcb-aux xcb-event xcb-render \
		xcb-shm xcb ${WANTLIB}

WANTLIB-libpurple= crypto ssl silc>=7 silcclient>=5 meanwhile gadu>=4 \
		${WANTLIB}

WANTLIB-finch=	X11 Xau Xdmcp ncursesw panelw pthread-stubs xcb purple \
		${WANTLIB} ${MODPY_WANTLIB}

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python \
		devel/gconf2

BUILD_DEPENDS=		x11/dbus-python
RUN_DEPENDS-main=	x11/dbus-python \
			x11/py-gtk2 \
			devel/desktop-file-utils
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/startup-notification>=0.10
RUN_DEPENDS-finch=	# empty
LIB_DEPENDS-finch=	${LIB_DEPENDS} \
			${MODPY_LIB_DEPENDS}
RUN_DEPENDS-libpurple=	${MODGCONF2_RUN_DEPENDS}
LIB_DEPENDS-libpurple=	${LIB_DEPENDS} \
			devel/silc-toolkit \
			net/meanwhile \
			net/libgadu

MODGCONF2_SCHEMAS_DIR=	pidgin
MODGCONF2_LIBDEP=	No

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
# Should be 2.67
AUTOCONF_VERSION= 2.64
CONFIGURE_ARGS+= --disable-avahi \
		 --disable-cap \
		 --disable-doxygen \
		 --disable-farsight \
		 --disable-gevolution \
		 --disable-gnutls \
		 --disable-idn \
		 --disable-nm \
		 --disable-nss \
		 --disable-perl \
		 --disable-silent-rules \
		 --disable-tcl \
		 --disable-tk \
		 --disable-vv \
		 --with-python=${MODPY_BIN}
# XXX prevent a fatal error at install phase
CONFIGURE_ARGS+= --disable-schemas-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_db_dbopen=no

FLAVORS=	audio debug gtkspell
FLAVOR?=

MULTI_PACKAGES= -main -finch -libpurple

.if ${FLAVOR:L:Maudio}
LIB_DEPENDS+=		multimedia/gstreamer-0.10/core>=0.10,<=0.11 \
			multimedia/gstreamer-0.10/plugins-base
WANTLIB+=		gstreamer-0.10 gstinterfaces-0.10
LIB_DEPENDS-main+=	libpurple-${VERSION}-audio:${BUILD_PKGPATH},-libpurple
LIB_DEPENDS-finch+=	libpurple-${VERSION}-audio:${BUILD_PKGPATH},-libpurple
.else
CONFIGURE_ARGS+=	--disable-gstreamer
LIB_DEPENDS-main+=	libpurple-${VERSION}:${BUILD_PKGPATH},-libpurple
LIB_DEPENDS-finch+=	libpurple-${VERSION}:${BUILD_PKGPATH},-libpurple
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
DEBUG=			-O0 -g
.endif

.if ${FLAVOR:L:Mgtkspell}
LIB_DEPENDS-main+=	textproc/gtkspell
WANTLIB-main+=		enchant gtkspell
.else
CONFIGURE_ARGS+=	--disable-gtkspell
.endif

post-extract:
	@cp ${FILESDIR}/ssl-openssl.c ${WRKSRC}/libpurple/plugins/ssl

post-build:
	cp ${FILESDIR}/purple.service ${WRKSRC}
	@${SUBST_CMD} ${WRKSRC}/libpurple/purple-remote \
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
