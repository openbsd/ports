COMMENT=	encrypted SQLite database

GH_ACCOUNT=	sqlcipher
GH_PROJECT=	sqlcipher
GH_TAGNAME=	v4.11.0

SHARED_LIBS +=  sqlcipher                 3.1

CATEGORIES=	databases

HOMEPAGE=	https://www.zetetic.net/sqlcipher/

# PD and BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curses m pthread readline z

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	lang/tcl
MODTCL_VERSION=	8.6

BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE= simple

CONFIGURE_ARGS=	--soname=${LIBsqlcipher_VERSION} \
		--disable-tcl \
		--includedir=${PREFIX}/include/sqlcipher \
		--mandir=${PREFIX}/man \
		--with-tempstore=yes

CONFIGURE_ENV=	CCACHE=None \
		CFLAGS='${CFLAGS}' \
		LDFLAGS='${LDFLAGS}' \
		autosetup_tclsh=${MODTCL_BIN}

CFLAGS+=	-DOMIT_MEMLOCK \
		-DSQLITE_EXTRA_INIT=sqlcipher_extra_init \
		-DSQLITE_EXTRA_SHUTDOWN=sqlcipher_extra_shutdown \
		-DSQLITE_HAS_CODEC

LDFLAGS+=	-lcrypto

post-install:
	mv ${PREFIX}/bin/{sqlite3,sqlcipher}
	mv ${PREFIX}/lib/lib{sqlite3,sqlcipher}.a
	rm ${PREFIX}/lib/libsqlite3.so{,.0}
	mv ${PREFIX}/lib/libsqlite3.so.* \
	    ${PREFIX}/lib/libsqlcipher.so.${LIBsqlcipher_VERSION}
	mv ${PREFIX}/lib/pkgconfig/{sqlite3,sqlcipher}.pc
	mv ${PREFIX}/man/man1/{sqlite3,sqlcipher}.1
	sed -i s/-lsqlite3/-lsqlcipher/ ${PREFIX}/lib/pkgconfig/sqlcipher.pc

NO_TEST=	Yes

.include <bsd.port.mk>
