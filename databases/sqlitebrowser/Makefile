COMMENT =	graphical database browser for SQLite (DB4S)

GH_ACCOUNT =	sqlitebrowser
GH_PROJECT =	sqlitebrowser
#GH_TAGNAME =	v3.13.1
GH_COMMIT =	16140514540926a9b79d8e51195d93455331ebc0
DISTNAME =	sqlitebrowser-3.13.99pl20260303

CATEGORIES =	databases x11

HOMEPAGE =	https://sqlitebrowser.org/

# MPLv2/GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt6Concurrent Qt6Core Qt6Core5Compat Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Test Qt6Widgets Qt6Xml c m qscintilla2_qt6

FLAVOR ?=
FLAVORS =	sqlcipher

MODULES =	x11/qt6 \
		devel/cmake

LIB_DEPENDS =	editors/qscintilla,qt6 \
		x11/qt6/qt5compat

RUN_DEPENDS =	x11/gtk+4,-guic \
		devel/desktop-file-utils

CONFIGURE_ARGS = -DQT_MAJOR=Qt6 \
		 -DENABLE_TESTING=ON \
		 -DGIT_COMMIT_HASH=${GH_COMMIT:C/(........).*/\1/}

.if ${FLAVOR:Msqlcipher}
CONFIGURE_ARGS += -Dsqlcipher=1
LIB_DEPENDS +=    databases/sqlcipher
WANTLIB +=	  sqlcipher
.else
LIB_DEPENDS +=    databases/sqlite3
WANTLIB +=	  sqlite3
.endif

.include <bsd.port.mk>
