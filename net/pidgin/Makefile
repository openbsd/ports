# $OpenBSD: Makefile,v 1.121 2014/02/06 07:44:15 brad Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multi-protocol instant messaging client
COMMENT-finch=	multi-protocol instant messaging client, console client
COMMENT-libpurple= multi-protocol instant messaging library

VERSION=	2.10.9
DISTNAME=	pidgin-${VERSION}
PKGNAME-main=	pidgin-${VERSION}
PKGNAME-finch=	finch-${VERSION}
PKGNAME-libpurple= libpurple-${VERSION}
.for i in -finch -libpurple
FULLPKGNAME$i= ${PKGNAME$i}${FLAVOR_EXT:S/-gtkspell//}
FULLPKGPATH$i= ${PKGPATH},$i${FLAVOR_EXT:S/-gtkspell//:S/-/,/g}
.endfor
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pidgin/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	jabber		0.0 \
		oscar		0.0 \
		purple		6.2 \
		purple-client	6.2 \
		gnt		6.2 \
		ymsg		0.0

HOMEPAGE=	http://pidgin.im/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 idn m pcre pthread util xml2 z
WANTLIB-main=	X11 ICE SM Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender Xss atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 graphite2 gtk-x11-2.0 \
		harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread-stubs purple stdc++ xcb-render xcb-shm xcb \
		${WANTLIB}
WANTLIB-libpurple= crypto gadu>=5 meanwhile ssl silc>=7 silcclient>=5 \
		${WANTLIB}
WANTLIB-finch=	X11 ncursesw panelw purple xcb ${WANTLIB} ${MODPY_WANTLIB}

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python \
		devel/gconf2

BUILD_DEPENDS=		x11/dbus-python
LIB_DEPENDS=		devel/glib2
RUN_DEPENDS-main=	x11/dbus-python \
			x11/py-gtk2 \
			devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			x11/gtk+2
RUN_DEPENDS-finch=	# empty
LIB_DEPENDS-finch=	${LIB_DEPENDS} \
			${MODPY_LIB_DEPENDS}
RUN_DEPENDS-libpurple=	${MODGCONF2_RUN_DEPENDS}
LIB_DEPENDS-libpurple=	${LIB_DEPENDS} \
			devel/libidn \
			devel/silc-toolkit \
			net/meanwhile \
			net/libgadu>=1.11.0

MODGCONF2_SCHEMAS_DIR=	pidgin
MODGCONF2_LIBDEP=	No

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --disable-avahi \
		 --disable-cap \
		 --disable-doxygen \
		 --disable-farstream \
		 --disable-gevolution \
		 --disable-gnutls \
		 --disable-nm \
		 --disable-nss \
		 --disable-perl \
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

.if ${FLAVOR:Maudio}
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

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
DEBUG=			-O0 -g
.endif

.if ${FLAVOR:Mgtkspell}
LIB_DEPENDS-main+=	textproc/gtkspell
WANTLIB-main+=		enchant gtkspell
.else
CONFIGURE_ARGS+=	--disable-gtkspell
.endif

ARCHIVE_DIR_LIST=	finch gnt pidgin purple-2

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
.for dir in ${ARCHIVE_DIR_LIST}
	@find ${PREFIX}/lib/${dir} -name '*.a' -print | xargs rm
	@find ${PREFIX}/lib/${dir} -name '*.la' -print | xargs rm
.endfor

.include <bsd.port.mk>
