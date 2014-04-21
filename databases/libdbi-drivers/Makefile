# $OpenBSD: Makefile,v 1.19 2014/04/21 23:30:36 sthen Exp $

V =			0.8.3-1
COMMENT-main =		mysql driver for libdbi
COMMENT-pgsql =		pgsql driver for libdbi
COMMENT-sqlite =	sqlite driver for libdbi
COMMENT-sqlite3 =	sqlite3 driver for libdbi
COMMENT-freetds =	freetds driver for libdbi
DISTNAME =		libdbi-drivers-$V
PKGNAME-main =		libdbi-drivers-mysql-${V:S/-/./}
REVISION-main =		3
PKGNAME-pgsql =		libdbi-drivers-pgsql-${V:S/-/./}
REVISION-pgsql =	3
PKGNAME-sqlite =	libdbi-drivers-sqlite-${V:S/-/./}
REVISION-sqlite =	0
PKGNAME-sqlite3 =	libdbi-drivers-sqlite3-${V:S/-/./}
REVISION-sqlite3 =	2
PKGNAME-freetds =	libdbi-drivers-freetds-${V:S/-/./}
REVISION-freetds =	5
CATEGORIES =		databases

HOMEPAGE =		http://libdbi-drivers.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdbi-drivers/}

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

MULTI_PACKAGES =	-main -pgsql -sqlite -sqlite3 -freetds

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext


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

WANTLIB-main =		crypto m ssl z mysqlclient dbi
LIB_DEPENDS-main =	databases/mysql \
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

WANTLIB-sqlite3 =	m sqlite3 dbi
LIB_DEPENDS-sqlite3 =	databases/libdbi
RUN_DEPENDS-sqlite3 =

WANTLIB-freetds =	crypto ct dbi m ssl ${MODGETTEXT_WANTLIB}
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
