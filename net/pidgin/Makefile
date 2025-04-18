COMMENT-main=	multi-protocol instant messaging client
COMMENT-finch=	multi-protocol instant messaging client, console client
COMMENT-libpurple= multi-protocol instant messaging library
COMMENT-bonjour= Bonjour protocol support for libpurple

VERSION=	2.14.14
DISTNAME=	pidgin-${VERSION}
PKGNAME-main=	pidgin-${VERSION}
PKGNAME-finch=	finch-${VERSION}
PKGNAME-libpurple= libpurple-${VERSION}
PKGNAME-bonjour= libpurple-bonjour-${VERSION}
.for i in -finch -libpurple -bonjour
FULLPKGNAME$i= ${PKGNAME$i}${FLAVOR_EXT:S/-gtkspell//}
FULLPKGPATH$i= ${PKGPATH},$i${FLAVOR_EXT:S/-gtkspell//:S/-/,/g}
.endfor
CATEGORIES=	net
SITES=		${SITE_SOURCEFORGE:=pidgin/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	jabber		0.0 \
		purple		7.1 \
		purple-client	7.1

HOMEPAGE=	https://pidgin.im/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

WANTLIB=	dbus-1 execinfo ffi glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 iconv intl lzma m pcre2-8 pthread \
		xml2 z
WANTLIB-main=	X11 Xau Xdmcp ICE SM Xcomposite Xcursor Xdamage Xext Xfixes \
		Xi Xinerama Xrandr Xrender Xss atk-1.0 c cairo dbus-glib-1 \
		expat fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 graphite2 gtk-x11-2.0 harfbuzz idn jpeg pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png purple xcb-render \
		xcb-shm xcb ${COMPILER_LIBCXX} ${WANTLIB}
WANTLIB-libpurple= c crypto dbus-glib-1 gadu gio-2.0 idn meanwhile ssl silc \
		   silcclient ${WANTLIB}
WANTLIB-finch=	X11 c curses dbus-glib-1 gio-2.0 gnt idn panel purple xcb \
		${WANTLIB}
WANTLIB-bonjour= avahi-client avahi-common avahi-glib ${WANTLIB}

MODULES=	textproc/intltool \
		lang/python \
		devel/gconf2

BUILD_DEPENDS=		x11/dbus-python
LIB_DEPENDS=		devel/glib2 \
			textproc/libxml
RUN_DEPENDS-main=	x11/dbus-python \
			devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			x11/gtk+2
RUN_DEPENDS-finch=	# empty
LIB_DEPENDS-finch=	${LIB_DEPENDS} \
			${MODPY_LIB_DEPENDS} \
			devel/libgnt
RUN_DEPENDS-libpurple=	${MODGCONF2_RUN_DEPENDS}
LIB_DEPENDS-libpurple=	${LIB_DEPENDS} \
			devel/libidn \
			devel/silc-toolkit \
			net/meanwhile \
			net/libgadu
RUN_DEPENDS-bonjour=	net/pidgin,-libpurple
LIB_DEPENDS-bonjour=	${LIB_DEPENDS} \
			net/avahi,-glib \
			net/avahi,-libs

MODGCONF2_SCHEMAS_DIR=	pidgin
MODGCONF2_LIBDEP=	No

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.72
AUTOMAKE_VERSION= 1.16
CONFIGURE_ARGS+= --disable-cap \
		 --disable-doxygen \
		 --disable-farstream \
		 --disable-gevolution \
		 --disable-gnutls \
		 --disable-nm \
		 --disable-nss \
		 --disable-perl \
		 --disable-cyrus-sasl \
		 --disable-tcl \
		 --disable-tk \
		 --disable-vv \
		 --with-python3=${MODPY_BIN}
# XXX prevent a fatal error at install phase
CONFIGURE_ARGS+= --disable-schemas-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_db_dbopen=no
# see patch-pidgin_Makefile_in, no AC_PROG_CXX
MAKE_ENV=	CXX="${CXX}"

FLAVORS=	audio debug gtkspell
FLAVOR?=

MULTI_PACKAGES= -main -finch -libpurple -bonjour

.if ${FLAVOR:Maudio}
LIB_DEPENDS+=		multimedia/gstreamer1/plugins-base
WANTLIB+=		gstbase-1.0 gstreamer-1.0 gstvideo-1.0 orc-0.4
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

ARCHIVE_DIR_LIST=	finch pidgin purple-2

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
	@find ${PREFIX}/lib/${dir} \( -name '*.a' -o -name '*.la' \) -delete
.endfor

.include <bsd.port.mk>
