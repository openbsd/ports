# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:22 pascal Exp $

COMMENT-main =		read microsoft Access MDB
COMMENT-gmdb =		graphical interface to MDB tools

GH_ACCOUNT =		brianb
GH_PROJECT =		mdbtools
GH_TAGNAME =		0.7.1

DISTNAME =		mdbtools-${GH_TAGNAME}
PKGNAME-main =		mdbtools-${GH_TAGNAME}
PKGNAME-gmdb =		gmdb-${GH_TAGNAME}
REVISION-main =		1
REVISION-gmdb =		1
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

WANTLIB-main += ${MODLIBICONV_WANTLIB}
WANTLIB-main += c glib-2.0 iodbcinst pthread readline

WANTLIB-gmdb += ${MODGETTEXT_WANTLIB}
WANTLIB-gmdb += c gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 gnome-2
WANTLIB-gmdb += gnomeui-2 gobject-2.0 gtk-x11-2.0 mdb mdbsql pango-1.0
WANTLIB-gmdb += pthread

MODULES =		gcc4 \
			converters/libiconv

MODGCC4_ARCHS =		"*"

BUILD_DEPENDS =		devel/bison \
			devel/libtool \
			textproc/txt2man \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS-main =	${MODLIBICONV_LIB_DEPENDS} \
			databases/iodbc,-main \
			devel/glib2
LIB_DEPENDS-gmdb =	${MODGETTEXT_LIB_DEPENDS} \
			databases/mdbtools,-main>=0.7.1v0 \
			x11/gnome/libgnomeui

RUN_DEPENDS-main =	${MODLIBICONV_RUN_DEPENDS}
RUN_DEPENDS-gmdb =	${MODGETTEXT_RUN_DEPENDS}

YACC=			bison -y
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-iodbc=${LOCALBASE}

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_x11}
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gmdb}
.endif

.if ${BUILD_PACKAGES:M-gmdb}
MODULES +=		devel/gettext x11/gnome
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
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/gmdb2.desktop \
			${PREFIX}/share/applications/gmdb2.desktop

.include <bsd.port.mk>
