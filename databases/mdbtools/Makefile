# $OpenBSD: Makefile,v 1.20 2020/06/10 07:18:35 ajacoutot Exp $

COMMENT-main =		read microsoft Access MDB
COMMENT-gmdb =		graphical interface to MDB tools

GH_ACCOUNT =		brianb
GH_PROJECT =		mdbtools
GH_TAGNAME =		0.7.1

PKGNAME-main =		${GH_PROJECT}-${GH_TAGNAME}
PKGNAME-gmdb =		gmdb-${GH_TAGNAME}
REVISION-main =		7
REVISION-gmdb =		8
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

WANTLIB-main += c glib-2.0 iconv iodbcinst readline

WANTLIB-gmdb += c gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 gnome-2
WANTLIB-gmdb += gnomeui-2 gobject-2.0 gtk-x11-2.0 intl mdb mdbsql pango-1.0

BUILD_DEPENDS =		devel/bison \
			textproc/txt2man

LIB_DEPENDS-main =	converters/libiconv \
			databases/iodbc,-main \
			devel/glib2
LIB_DEPENDS-gmdb =	databases/mdbtools,-main>=0.7.1v0 \
			x11/gnome/libgnomeui

RUN_DEPENDS-main =
RUN_DEPENDS-gmdb =	${MODGNOME_RUN_DEPENDS}

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
MODGNOME_TOOLS +=	desktop-file-utils
.else
CONFIGURE_ARGS +=	--disable-gmdb2
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/gmdb2.desktop \
			${PREFIX}/share/applications/gmdb2.desktop

.include <bsd.port.mk>
