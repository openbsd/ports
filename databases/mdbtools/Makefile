COMMENT =	read Microsoft Access MDB databases

V =		1.0.1
DISTNAME =	mdbtools-$V
SITES =		https://github.com/mdbtools/mdbtools/releases/download/v$V/

HOMEPAGE =	https://mdbtools.github.io/

EPOCH =		0

CATEGORIES =	databases converters

SHARED_LIBS +=  mdb                  3.0      # 4.0
SHARED_LIBS +=  mdbsql               3.0      # 4.0

# GPLv2+, LGPL v2+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c glib-2.0 iodbcinst readline

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			shells/bash-completion \
			textproc/txt2man

LIB_DEPENDS =		databases/iodbc,-main \
			devel/glib2

YACC=			bison -y
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-iodbc=${LOCALBASE}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/odbc/*.{a,la}

.include <bsd.port.mk>
