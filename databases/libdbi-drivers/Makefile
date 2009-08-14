# $OpenBSD: Makefile,v 1.2 2009/08/14 17:56:16 sthen Exp $

V =			0.8.3-1
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

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

MULTI_PACKAGES =	-main -pgsql -sqlite -sqlite3 -freetds

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-docs \
			--with-dbi-libdir=${LOCALBASE}/lib \
			--with-dbi-incdir=${LOCALBASE}/include/dbi \
			--with-mysql \
			--with-pgsql \
			--with-pgsql-incdir="${LOCALBASE}/include -I${LOCALBASE}/include/postgresql" \
			--with-pgsql-libdir=${LOCALBASE}/lib/postgresql \
			--with-sqlite \
			--with-sqlite3 \
			--with-freetds \
			--with-freetds-incdir=${LOCALBASE}/include \
			--with-freetds-libdir=${LOCALBASE}/lib

WANTLIB-main =		crypto m ssl z
LIB_DEPENDS-main =	mysqlclient::databases/mysql \
			dbi::databases/libdbi

WANTLIB-pgsql =		m
LIB_DEPENDS-pgsql =	pq::databases/postgresql \
			dbi::databases/libdbi

WANTLIB-sqlite =	m
LIB_DEPENDS-sqlite =	sqlite::databases/sqlite \
			dbi::databases/libdbi

WANTLIB-sqlite3 =	m
LIB_DEPENDS-sqlite3 =	sqlite3::databases/sqlite3 \
			dbi::databases/libdbi

WANTLIB-freetds =	iconv m
LIB_DEPENDS-freetds =	ct::databases/freetds \
			dbi::databases/libdbi

REGRESS_IS_INTERACTIVE =Yes
REGRESS_DEPENDS =	::databases/libdbi-drivers,-main \
			::databases/libdbi-drivers,-pgsql \
			::databases/libdbi-drivers,-sqlite \
			::databases/libdbi-drivers,-sqlite3 \
			::databases/libdbi-drivers,-freetds

post-install:
.for d in mysql pgsql sqlite sqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi-drivers/dbd_${d}
	${INSTALL_DATA} ${WRKSRC}/drivers/${d}/dbd_${d}.pdf \
		${PREFIX}/share/doc/libdbi-drivers
	${INSTALL_DATA} ${WRKSRC}/drivers/${d}/dbd_${d}/*.html \
		${PREFIX}/share/doc/libdbi-drivers/dbd_${d}
.endfor

.include <bsd.port.mk>
