# $OpenBSD: Makefile,v 1.142 2019/09/09 11:10:10 robert Exp $

# XXX building this port while a version is already installed on the
# system will lead to unexpected hidden dependencies!!!

COMMENT-main=		network backup solution (client)
COMMENT-server=		network backup solution (server)
COMMENT-bat=		network backup solution (gui-client)
COMMENT-mysql=		Bacula libbaccats support for MySQL
COMMENT-pgsql=		Bacula libbaccats support for PostgreSQL
COMMENT-sqlite3=	Bacula libbaccats support for SQLite3

V=			9.4.4
DISTNAME=		bacula-$V
PKGNAME-main=		bacula-client-$V
PKGNAME-server=		bacula-server-$V
PKGNAME-bat=		bacula-bat-$V
PKGNAME-mysql=		bacula-mysql-$V
PKGNAME-pgsql=		bacula-pgsql-$V
PKGNAME-sqlite3=	bacula-sqlite3-$V

REVISION-server=	1

CATEGORIES=		sysutils

SHARED_LIBS +=  bac                  8.1
SHARED_LIBS +=  baccfg               7.0
SHARED_LIBS +=  bacfind              6.0
SHARED_LIBS +=  bacsd                1.0
SHARED_LIBS +=  bacsql               6.0

BACCATS_LIBV =	4.0
SHARED_LIBS +=  baccats              ${BACCATS_LIBV}
SHARED_LIBS +=  baccats-mysql        ${BACCATS_LIBV}
SHARED_LIBS +=  baccats-postgresql   ${BACCATS_LIBV}
SHARED_LIBS +=  baccats-sqlite3      ${BACCATS_LIBV}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}
HOMEPAGE=		http://www.bacula.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

WANTLIB += c crypto iconv intl m pthread ssl z ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

# AGPLv3 with exception for OpenSSL (majority),
# FDL (docs), LGPL (some libraries), and PD
# http://www.bacula.org/7.0.x-manuals/en/main/Bacula_Copyright_Trademark_.html
PERMIT_PACKAGE=		Yes

LIB_DEPENDS=		devel/gettext,-runtime

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/bacula
SYSCONFDIR=		${BASESYSCONFDIR}/bacula

PATCHORIG=		.orig.port
CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
NO_TEST=		Yes

PSEUDO_FLAVORS=		no_bat no_pgsql no_mysql
FLAVOR?=

MULTI_PACKAGES=		-main -server -bat -mysql -pgsql -sqlite3

CONFIGURE_ARGS=		--enable-smartalloc \
			--docdir=${PREFIX}/share/doc/bacula \
			--htmldir=${PREFIX}/share/doc/bacula/html \
			--with-dir-user=_bacula \
			--with-dir-group=_bacula \
			--with-sd-user=_bacula-sd \
			--with-sd-group=_bacula \
			--with-scriptdir=${PREFIX}/libexec/bacula \
			--with-fd-user=root \
			--with-fd-group=wheel \
			--with-pid-dir=/var/run \
			--with-subsys-dir=${LOCALSTATEDIR} \
			--with-working-dir=${LOCALSTATEDIR} \
			--with-bsrdir=${LOCALSTATEDIR} \
			--with-logdir=${LOCALSTATEDIR} \
			--with-sbin-perm=755 \
			--without-x \
			--disable-nls \
			--disable-conio \
			--enable-readline \
			--with-readline=/usr \
			--with-openssl \
			--with-basename=bacula \
			--with-hostname=bacula.domain.tld \
			--with-sqlite3

MAKE_FLAGS=		NO_ECHO=
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CONFIG_SITE=${PORTSDIR}/infrastructure/db/config.site \
			MTX=/bin/chio \
			PKG_CONFIG_LIBDIR="${LOCALBASE}/lib/qt4/pkgconfig:${LOCALBASE}/lib/qt4" \
			QMAKE=${LOCALBASE}/bin/qmake4

# configure mistakenly assumes xattr support if it finds any of the
# openat() family of functions, so poison the autoconf cache.
# None of these functions are used outside the code for Solaris xattr 
# as of 5.0.2.
.for ac_func in openat fstatat unlinkat fchownat futimesat
CONFIGURE_ENV +=	ac_cv_func_${ac_func}=no
.endfor

WANTLIB-main += ${WANTLIB} lzo2 curses readline
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/lzo2

WANTLIB-server += ${WANTLIB} bac baccats baccfg bacfind lzo2
LIB_DEPENDS-server=	${LIB_DEPENDS} \
			sysutils/bacula,-main \
			bacula-pgsql-*|bacula-mysql-*|bacula-sqlite3-*:sysutils/bacula,-pgsql

WANTLIB-pgsql += pq crypto m ssl ${COMPILER_LIBCXX}
LIB_DEPENDS-pgsql +=	${MODGCC4_CPPLIBDEP} \
			databases/postgresql

WANTLIB-mysql += mysqlclient_r crypto m pthread ssl ${COMPILER_LIBCXX}
LIB_DEPENDS-mysql +=	${MODGCC4_CPPLIBDEP} \
			databases/mariadb

WANTLIB-sqlite3 += sqlite3 m pthread z ${COMPILER_LIBCXX}
LIB_DEPENDS-sqlite3=	${MODGCC4_CPPLIBDEP} \
			databases/sqlite3

WANTLIB-bat += ${WANTLIB}
WANTLIB-bat += ICE QtCore QtGui SM X11 Xext Xi Xinerama Xrender bac
WANTLIB-bat += baccfg bacfind expat fontconfig freetype xcb
WANTLIB-bat += ffi glib-2.0 gobject-2.0 gthread-2.0 pcre png
RUN_DEPENDS-bat=	${RUN_DEPENDS} \
			devel/desktop-file-utils
LIB_DEPENDS-bat=	${LIB_DEPENDS} \
			x11/qt4 \
			sysutils/bacula,-main

RUN_DEPENDS-server=	lang/gawk

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-bat}
CONFIGURE_ARGS +=	--disable-bat
.else
CONFIGURE_ARGS +=	--enable-bat
.endif

.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS +=	--without-mysql
.else
CONFIGURE_ARGS +=	--with-mysql
.endif

.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS +=	--without-postgresql
.else
CONFIGURE_ARGS +=	--with-postgresql
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/manpages/bat.1 \
		${WRKSRC}/src/qt-console/main.cpp \
		${WRKSRC}/scripts/bat.desktop.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bacula
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/bacula/updatedb
	${INSTALL_SCRIPT} ${WRKSRC}/updatedb/* ${PREFIX}/libexec/bacula/updatedb
	${INSTALL_SCRIPT} ${WRKSRC}/examples/autochangers/chio-changer-openbsd \
		${PREFIX}/libexec/bacula/chio-changer-openbsd.dist
	rm ${PREFIX}/libexec/bacula/updatedb/update*.in
	rm ${PREFIX}/sbin/bacula
# does nothing
	cd ${PREFIX}/libexec/bacula/updatedb && rm update_bacula_tables_8_to_9
# unneeded: SQLite2
	cd ${PREFIX}/libexec/bacula/updatedb && rm update_sqlite_tables_4_to_5 \
		update_sqlite_tables_5_to_6 update_sqlite_tables_6_to_7 \
		update_sqlite_tables_7_to_8 update_sqlite_tables_8_to_9
.if ${BUILD_PACKAGES:M-bat}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/src/qt-console/images/bat_icon.png \
		${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/scripts/bat.desktop ${PREFIX}/share/applications
.else
	rm ${PREFIX}/man/man1/bat.1
.endif
	mv ${WRKINST}/etc/bacula/* ${PREFIX}/share/examples/bacula/
	rmdir ${WRKINST}/etc/bacula
.if ${BUILD_PACKAGES:M-server}
	rm ${PREFIX}/lib/libbaccats.la
	mv ${PREFIX}/libexec/bacula/query.sql{,.dist}
	mv ${PREFIX}/libexec/bacula/mtx-changer.conf{,.dist}
	rmdir ${WRKINST}/var/bacula
.endif

.include <bsd.port.mk>
