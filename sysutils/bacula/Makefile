# $OpenBSD: Makefile,v 1.5 2007/09/05 07:57:33 merdely Exp $

COMMENT-main=		network backup solution
COMMENT-client=		network backup solution (client)
COMMENT-server=		network backup solution (server)

VERSION=		2.0.3
DISTNAME=		bacula-${VERSION}
PKGNAME-main=		${DISTNAME}p0
FULLPKGNAME-client=	bacula-client-${VERSION}p2
PKGNAME-server=		bacula-server-${VERSION}p1
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}

HOMEPAGE=		http://www.bacula.org/

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

WANTLIB=		c pthread crypto ssl z m stdc++
WANTLIB-server=		${WANTLIB} readline termcap
WANTLIB-main=		${WANTLIB} readline termcap

MULTI_PACKAGES=		-main -client -server

# Modified GPLv2
# http://bacula.org/dev-manual/Bacula_Copyri_Tradem_Licens.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BACULACONF=		/etc/bacula
BACULASTATE=		/var/bacula
SUBST_VARS=		BACULACONF BACULASTATE

CONFIGURE_STYLE=	simple
USE_GMAKE=		yes
NO_REGRESS=		yes

FLAVORS=		pgsql mysql sqlite3 sqlite
FLAVOR?=		sqlite3

CONFIGURE_ARGS=		--enable-smartalloc \
			--prefix=${PREFIX} \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info \
			--sysconfdir=${BACULACONF} \
			--with-scriptdir=${PREFIX}/libexec/bacula \
			--localstatedir=${BACULASTATE} \
			--with-pid-dir=/var/run \
			--with-subsys-dir=${BACULASTATE} \
			--with-working-dir=${BACULASTATE} \
			--with-dir-user=_bacula \
			--with-dir-group=_bacula \
			--with-sd-user=root \
			--with-sd-group=wheel \
			--without-x \
			--without-tcp-wrappers \
			--without-smtp-host \
			--without-job-email \
			--without-dump-email \
			--disable-gnome \
			--disable-wx-console \
			--disable-tray-monitor \
			--disable-nls \
			--disable-conio \
			--enable-readline \
			--with-openssl

CONFIGURE_ENV+=		CPPFLAGS="-I/usr/include/readline \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PTHREAD_CFLAGS="${PTHREAD_CFLAGS}" \
			PTHREAD_LIBS="${PTHREAD_LIBS}" \
			MTX=/bin/chio \
			TAPEDRIVE=/dev/rst0 \
			CONFIG_SITE=${PORTSDIR}/infrastructure/db/config.site

BACKEND=
.if ${FLAVOR:L:Mpgsql}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--with-postgresql \
			--without-mysql \
			--without-sqlite \
			--without-sqlite3
LIB_DEPENDS+=		pq.>=2:postgresql-client-*:databases/postgresql
BACKEND=		postgresql
.else
CONFIGURE_ARGS+=	--without-postgresql
.endif

.if ${FLAVOR:L:Mmysql}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--without-postgresql \
			--with-mysql \
			--without-sqlite \
			--without-sqlite3
LIB_DEPENDS+=		lib/mysql/mysqlclient.>=10::databases/mysql
BACKEND=		mysql
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if ${FLAVOR:L:Msqlite3}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--without-postgresql \
			--without-mysql \
			--without-sqlite \
			--with-sqlite3
LIB_DEPENDS+=		sqlite3.>=8::databases/sqlite3
BACKEND=		sqlite3
.else
CONFIGURE_ARGS+=	--without-sqlite3
.endif

.if ${FLAVOR:L:Msqlite}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--without-postgresql \
			--without-mysql \
			--with-sqlite \
			--without-sqlite3
LIB_DEPENDS+=		sqlite::databases/sqlite
BACKEND=		sqlite
.else
CONFIGURE_ARGS+=	--without-sqlite
.endif
SUBST_VARS+=		BACKEND

.if empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif

LIB_DEPENDS-client=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bacula
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bacula-dir.conf \
		${WRKINST}/etc/bacula/bacula-fd.conf \
		${WRKINST}/etc/bacula/bacula-sd.conf \
		${WRKINST}/etc/bacula/bconsole.conf \
		${PREFIX}/share/examples/bacula/

.include <bsd.port.mk>
