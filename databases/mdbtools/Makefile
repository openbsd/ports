# $OpenBSD: Makefile,v 1.2 2015/03/20 16:07:08 czarkoff Exp $

COMMENT-main =		read microsoft Access MDB
COMMENT-gmdb =		graphical interface to MDB tools

GH_ACCOUNT =		brianb
GH_PROJECT =		mdbtools
GH_TAGNAME =		0.7.1

DISTNAME =		mdbtools-${GH_TAGNAME}
PKGNAME-main =		mdbtools-${GH_TAGNAME}
PKGNAME-gmdb =		gmdb-${GH_TAGNAME}
EPOCH =			0

CATEGORIES =		databases converters
HOMEPAGE =		http://mdbtools.sourceforge.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

MULTI_PACKAGES = 	-main -gmdb
PSEUDO_FLAVORS =	no_x11
FLAVOR ?=

SHARED_LIBS +=  mdb                  2.0
SHARED_LIBS +=  mdbsql               2.0
SHARED_LIBS +=  mdbodbc              0.0
SHARED_LIBS +=  mdbodbcW             0.0

# GPLv2+, LGPL v2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c glib-2.0 pthread

WANTLIB-main += ${WANTLIB} iodbcinst pcre readline

WANTLIB-gmdb += ${WANTLIB} gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 gnome-2
WANTLIB-gmdb += gnomeui-2 gobject-2.0 gtk-x11-2.0 mdb mdbsql pango-1.0

MODULES =		gcc4 \
			devel/gettext

MODGCC4_ARCHS =		"*"

BUILD_DEPENDS =		devel/bison \
			textproc/txt2man \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =		devel/glib2
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			databases/iodbc,-main \
			devel/pcre
LIB_DEPENDS-gmdb =	${LIB_DEPENDS} \
			databases/mdbtools,-main>=0.7.1v0 \
			x11/gnome/libgnomeui

RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

CONFIGURE_ENV =		YACC="bison -y"
CONFIGURE_STYLE =	gnu
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

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			autoreconf -i -f

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -c ${FILESDIR}/gmdb2.desktop \
			${PREFIX}/share/applications/gmdb2.desktop

.include <bsd.port.mk>
