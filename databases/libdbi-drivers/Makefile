# $OpenBSD: Makefile,v 1.26 2016/11/08 21:53:16 sthen Exp $

V =			0.8.3-1
REVISION =		9
REVISION-sqlite3 =	11
COMMENT-main =		mysql driver for libdbi
COMMENT-pgsql =		pgsql driver for libdbi
COMMENT-sqlite =	sqlite driver for libdbi
COMMENT-sqlite3 =	sqlite3 driver for libdbi
COMMENT-freetds =	freetds driver for libdbi
DISTNAME =		libdbi-drivers-$V
PKGNAME-main =		libdbi-drivers-mysql-${V:S/-/./}
PKGNAME-pgsql =		libdbi-drivers-pgsql-${V:S/-/./}
PKGNAME-sqlite =	libdbi-drivers-sqlite-${V:S/-/./}
PKGNAME-sqlite3 =	libdbi-drivers-sqlite3-${V:S/-/./}
PKGNAME-freetds =	libdbi-drivers-freetds-${V:S/-/./}
CATEGORIES =		databases

HOMEPAGE =		http://libdbi-drivers.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdbi-drivers/}

MULTI_PACKAGES =	-main -pgsql -sqlite -sqlite3 -freetds

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-docs \
			--with-dbi-libdir=${LOCALBASE}/lib \
			--with-mysql \
			--with-pgsql \
			--with-pgsql-incdir="${LOCALBASE}/include -I${LOCALBASE}/include/postgresql" \
			--with-pgsql-libdir=${LOCALBASE}/lib/postgresql \
			--with-sqlite \
			--with-sqlite3 \
			--with-freetds \
			--with-freetds-incdir=${LOCALBASE}/include \
			--with-freetds-libdir=${LOCALBASE}/lib

WANTLIB-main =		crypto m pthread ssl stdc++ z mysqlclient dbi
LIB_DEPENDS-main =	databases/mariadb \
			databases/libdbi
RUN_DEPENDS-main =

WANTLIB-pgsql =		m pq dbi crypto ssl
LIB_DEPENDS-pgsql =	databases/postgresql \
			databases/libdbi
RUN_DEPENDS-pgsql =

WANTLIB-sqlite =	m sqlite dbi
LIB_DEPENDS-sqlite =	databases/sqlite \
			databases/libdbi
RUN_DEPENDS-sqlite =

WANTLIB-sqlite3 =	m pthread sqlite3 dbi
LIB_DEPENDS-sqlite3 =	databases/libdbi \
			databases/sqlite3
RUN_DEPENDS-sqlite3 =

WANTLIB-freetds =	crypto ct dbi iconv m pthread ssl
LIB_DEPENDS-freetds =	databases/freetds \
			databases/libdbi

TEST_IS_INTERACTIVE =Yes
TEST_DEPENDS =	databases/libdbi-drivers,-main \
			databases/libdbi-drivers,-pgsql \
			databases/libdbi-drivers,-sqlite \
			databases/libdbi-drivers,-sqlite3 \
			databases/libdbi-drivers,-freetds

post-install:
.for d in mysql pgsql sqlite sqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi-drivers/dbd_${d}
	${INSTALL_DATA} ${WRKSRC}/drivers/${d}/dbd_${d}.pdf \
		${PREFIX}/share/doc/libdbi-drivers
	${INSTALL_DATA} ${WRKSRC}/drivers/${d}/dbd_${d}/*.html \
		${PREFIX}/share/doc/libdbi-drivers/dbd_${d}
.endfor

.include <bsd.port.mk>
