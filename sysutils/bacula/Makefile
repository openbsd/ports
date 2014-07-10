# $OpenBSD: Makefile,v 1.79 2014/07/10 13:09:06 ajacoutot Exp $

# XXX building this port while a version is already installed on the
# system will lead to unexpected hidden dependencies!!!

SHARED_ONLY=		Yes

COMMENT-main=		network backup solution (client)
COMMENT-server=		network backup solution (server)
COMMENT-bat=		network backup solution (gui-client)
COMMENT-mysql=		Bacula libbaccats support for MySQL
COMMENT-pgsql=		Bacula libbaccats support for PostgreSQL
COMMENT-sqlite3=	Bacula libbaccats support for SQLite3

V=			7.0.4
DISTNAME=		bacula-$V
PKGNAME-main=		bacula-client-$V
PKGNAME-server=		bacula-server-$V
PKGNAME-bat=		bacula-bat-$V
PKGNAME-mysql=		bacula-mysql-$V
PKGNAME-pgsql=		bacula-pgsql-$V
PKGNAME-sqlite3=	bacula-sqlite3-$V

REVISION-server=	3
REVISION-main=		1
REVISION-bat=		1

CATEGORIES=		sysutils

SHARED_LIBS +=  bac                  5.0
SHARED_LIBS +=  baccfg               5.0
SHARED_LIBS +=  bacfind              5.0
SHARED_LIBS +=  bacsql               5.0

BACCATS_LIBV =	3.0
SHARED_LIBS +=  baccats              ${BACCATS_LIBV}
SHARED_LIBS +=  baccats-mysql        ${BACCATS_LIBV}
SHARED_LIBS +=  baccats-postgresql   ${BACCATS_LIBV}
SHARED_LIBS +=  baccats-sqlite3      ${BACCATS_LIBV}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}
HOMEPAGE=		http://www.bacula.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org> \
			Antoine Jacoutot <ajacoutot@openbsd.org>

WANTLIB += c pthread crypto ssl z m stdc++

# AGPLv3 with exception for OpenSSL (majority),
# FDL (docs), LGPL (some libraries), and PD
# http://www.bacula.org/7.0.x-manuals/en/main/Bacula_Copyright_Trademark_.html
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/bacula
SYSCONFDIR=		${BASESYSCONFDIR}/bacula

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
NO_TEST=		Yes

PSEUDO_FLAVORS=		no_bat
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
			--with-hostname=bacula.domain.tld

# build support for all DBs at once,
# the libbaccats pkg will decide DB support on a system
CONFIGURE_ARGS +=	--with-mysql \
			--with-postgresql \
			--with-sqlite3

MAKE_FLAGS=		NO_ECHO=

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

WANTLIB-main += ${WANTLIB} lzo2 ncurses readline
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/lzo2

WANTLIB-server += ${WANTLIB} bac baccats baccfg bacfind lzo2
LIB_DEPENDS-server=	${LIB_DEPENDS} \
			sysutils/bacula,-main \
			bacula-pgsql-*|bacula-mysql-*|bacula-sqlite3-*:sysutils/bacula,-pgsql

WANTLIB-pgsql += pq crypto m ssl stdc++
LIB_DEPENDS-pgsql +=	databases/postgresql

WANTLIB-mysql += mysqlclient_r crypto m pthread ssl stdc++ z
LIB_DEPENDS-mysql +=	databases/mysql

LIB_DEPENDS-sqlite3=	#empty
WANTLIB-sqlite3 += sqlite3 m stdc++

WANTLIB-bat += ${WANTLIB}
WANTLIB-bat += ICE QtCore QtGui SM X11 Xext Xi Xinerama Xrender bac
WANTLIB-bat += baccfg bacfind expat fontconfig freetype xcb pthread-stubs
WANTLIB-bat += ffi glib-2.0 gobject-2.0 gthread-2.0 pcre png
RUN_DEPENDS-bat=	${RUN_DEPENDS} \
			devel/desktop-file-utils
LIB_DEPENDS-bat=	${LIB_DEPENDS} \
			x11/qt4 \
			sysutils/bacula,-main

.include <bsd.port.arch.mk>
.if !${BUILD_PACKAGES:M-bat}
CONFIGURE_ARGS +=	--disable-bat
.else
CONFIGURE_ARGS +=	--enable-bat
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
	rm ${PREFIX}/lib/libbaccats.{a,la}
	mv ${PREFIX}/libexec/bacula/query.sql{,.dist}
	mv ${PREFIX}/libexec/bacula/mtx-changer.conf{,.dist}
	rm ${PREFIX}/sbin/bacula
# does nothing
	cd ${PREFIX}/libexec/bacula/updatedb && rm update_bacula_tables_8_to_9
# broken: tries to run scripts from /etc
	cd ${PREFIX}/libexec/bacula/updatedb && rm update_bdb_tables_8_to_9
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
	rmdir ${WRKINST}/{etc,var}/bacula

.include <bsd.port.mk>
