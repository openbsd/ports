COMMENT =	encrypted SQLite database

GH_ACCOUNT =	sqlcipher
GH_PROJECT =	sqlcipher
GH_TAGNAME =	v4.9.0

SHARED_LIBS +=  sqlcipher                 3.0 # 8.6

CATEGORIES =	databases

HOMEPAGE =	https://www.zetetic.net/sqlcipher/

# PD and BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto curses m pthread readline z

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	--disable-tcl \
			--includedir=${PREFIX}/include/sqlcipher \
			--mandir=${PREFIX}/man \
			--soname=${LIBsqlcipher_VERSION} \
			--with-tempstore=yes
CONFIGURE_ENV +=	LDFLAGS='${LDFLAGS}' 

NO_TEST =		Yes

CFLAGS +=		-DOMIT_MEMLOCK \
			-DSQLITE_EXTRA_INIT=sqlcipher_extra_init \
			-DSQLITE_EXTRA_SHUTDOWN=sqlcipher_extra_shutdown \
			-DSQLITE_HAS_CODEC

LDFLAGS +=		-lcrypto

MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

post-install:
	mv ${PREFIX}/bin/{sqlite3,sqlcipher}
	mv ${PREFIX}/lib/lib{sqlite3,sqlcipher}.a
	rm ${PREFIX}/lib/libsqlite3.so{,.0}
	mv ${PREFIX}/lib/libsqlite3.so.* \
	    ${PREFIX}/lib/libsqlcipher.so.${LIBsqlcipher_VERSION}
	mv ${PREFIX}/lib/pkgconfig/{sqlite3,sqlcipher}.pc
	mv ${PREFIX}/man/man1/{sqlite3,sqlcipher}.1
	sed -i s/-lsqlite3/-lsqlcipher/ ${PREFIX}/lib/pkgconfig/sqlcipher.pc

.include <bsd.port.mk>
