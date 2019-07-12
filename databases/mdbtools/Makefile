# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:54 sthen Exp $

COMMENT-main =		read microsoft Access MDB
COMMENT-gmdb =		graphical interface to MDB tools

GH_ACCOUNT =		brianb
GH_PROJECT =		mdbtools
GH_TAGNAME =		0.7.1

PKGNAME-main =		${GH_PROJECT}-${GH_TAGNAME}
PKGNAME-gmdb =		gmdb-${GH_TAGNAME}
REVISION-main =		6
REVISION-gmdb =		7
EPOCH =			0

CATEGORIES =		databases converters
HOMEPAGE =		http://mdbtools.sourceforge.net/

MULTI_PACKAGES = 	-main -gmdb
PSEUDO_FLAVORS =	no_x11
FLAVOR ?=

SHARED_LIBS +=  mdb                  2.0
SHARED_LIBS +=  mdbsql               2.0
SHARED_LIBS +=  mdbodbc              0.0
SHARED_LIBS +=  mdbodbcW             0.0

# GPLv2+, LGPL v2+
PERMIT_PACKAGE =	Yes

WANTLIB-main += c curses glib-2.0 iconv intl iodbcinst pcre pthread
WANTLIB-main += readline

WANTLIB-gmdb += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB-gmdb += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB-gmdb += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB-gmdb += canberra crypto dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB-gmdb += freetype fribidi gailutil gconf-2 gcrypt gdk-x11-2.0
WANTLIB-gmdb += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0
WANTLIB-gmdb += gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB-gmdb += gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB-gmdb += harfbuzz iconv intl ltdl lzma m mdb mdbsql ogg pango-1.0
WANTLIB-gmdb += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB-gmdb += pthread ssl util vorbis vorbisfile xcb xcb-render xcb-shm
WANTLIB-gmdb += xml2 z

BUILD_DEPENDS =		devel/bison \
			textproc/txt2man

LIB_DEPENDS-main =	converters/libiconv \
			databases/iodbc,-main \
			devel/glib2
LIB_DEPENDS-gmdb =	databases/mdbtools,-main>=0.7.1v0 \
			x11/gnome/libgnomeui

RUN_DEPENDS-main =
RUN_DEPENDS-gmdb =

YACC=			bison -y
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--with-iodbc=${LOCALBASE}

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_x11}
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gmdb}
.endif

.if ${BUILD_PACKAGES:M-gmdb}
MODULES +=		x11/gnome
MODGNOME_TOOLS +=	yelp desktop-file-utils
.else
CONFIGURE_ARGS +=	--disable-gmdb2
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/gmdb2.desktop \
			${PREFIX}/share/applications/gmdb2.desktop

.include <bsd.port.mk>
