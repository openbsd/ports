# $OpenBSD: Makefile,v 1.21 2021/10/30 07:02:01 ajacoutot Exp $

COMMENT =		read microsoft Access MDB

GH_ACCOUNT =		mdbtools
GH_PROJECT =		mdbtools
GH_TAGNAME =		v1.0.0
EPOCH =			0

CATEGORIES =		databases converters

SHARED_LIBS +=  mdb                  3.0      # 4.0
SHARED_LIBS +=  mdbsql               3.0      # 4.0

# GPLv2+, LGPL v2+
PERMIT_PACKAGE =	Yes

WANTLIB += c glib-2.0 iodbcinst readline

BUILD_DEPENDS =		devel/bison \
			shells/bash-completion \
			textproc/txt2man

LIB_DEPENDS =		databases/iodbc,-main \
			devel/glib2

YACC=			bison -y
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--with-iodbc=${LOCALBASE}
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/odbc/*.{a,la}

.include <bsd.port.mk>
