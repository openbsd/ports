COMMENT=	embedded SQL implementation

DISTNAME=	sqlite-autoconf-3500400
PKGNAME=	sqlite3-3.50.4
REVISION=	1

# XXX needs bumps every time :-/
SHARED_LIBS +=  sqlite3                   37.34 # 8.6
# sqlite suggests that users might like to assert() that library and header
# versions match, so bumps are needed even if function signatures don't change.
# ... at the current time the only one noticed is a < check (in subversion)
# rather than an == check so minor bumps are enough to cope with this, though
# we may run into others later.

CATEGORIES=	databases

HOMEPAGE=	https://www.sqlite.org/

# PD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m pthread readline z

SITES=		${HOMEPAGE}2025/

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	lang/tcl
MODTCL_VERSION=	8.6

BUILD_DEPENDS=	converters/sqlite2mdoc \
		${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--disable-static-shell \
		--soname=${LIBsqlite3_VERSION} \
		--prefix=${PREFIX} \
		--sysconfdir=${SYSCONFDIR} \
		--mandir=${PREFIX}/man \
		--localstatedir=${LOCALSTATEDIR} \
		--enable-all

CONFIGURE_ENV=	CCACHE=None \
		CFLAGS='${CFLAGS}' \
		autosetup_tclsh=${MODTCL_BIN}

CFLAGS+=	-DSQLITE_ENABLE_UNLOCK_NOTIFY \
		-DSQLITE_ENABLE_DBSTAT_VTAB \
		-DSQLITE_ENABLE_COLUMN_METADATA

# base-gcc + ld.bfd don't like "-rpath /usr/local/lib"
MAKE_FLAGS=	LDFLAGS.rpath="-Wl,-rpath,${PREFIX}/lib"
# don't strip the binary
MAKE_FLAGS+=	INSTALL.strip.0="${INSTALL_PROGRAM}"

post-install:
		rm ${PREFIX}/lib/libsqlite3.so{,.0}
		# This is usually incorrect, but here the build sets the library soname
		# so renaming the file after the fact is ok.
		mv ${PREFIX}/lib/libsqlite3.so.* ${PREFIX}/lib/libsqlite3.so.${LIBsqlite3_VERSION}
		${INSTALL_DATA_DIR} ${PREFIX}/man/man3
		${LOCALBASE}/bin/sqlite2mdoc -p ${PREFIX}/man/man3 ${PREFIX}/include/sqlite3.h
		# fix the .pc file
		sed -i -e 's/^Libs.private:.*/Libs.private: -lz -lm -lpthread/' ${PREFIX}/lib/pkgconfig/sqlite3.pc

NO_TEST=	Yes

.include <bsd.port.mk>
