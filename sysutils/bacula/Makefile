# $OpenBSD: Makefile,v 1.15 2009/08/10 06:34:29 kili Exp $

COMMENT-main=		network backup solution (client)
COMMENT-server=		network backup solution (server)
COMMENT-bat=		network backup solution (gui-client)

V=			2.4.4
DISTNAME=		bacula-$V
FULLPKGNAME-main=	bacula-client-$V
FULLPKGPATH-main=	${PKGPATH},-main
PKGNAME-server=		bacula-server-$V
FULLPKGNAME-bat=	bacula-bat-$Vp1
FULLPKGPATH-bat=	${PKGPATH},-bat
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}
HOMEPAGE=		http://www.bacula.org/

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

WANTLIB=		c pthread crypto ssl z m stdc++

MULTI_PACKAGES=		-main

# GPL (majority), LGPL (some libraries) and PD
# http://bacula.org/en/dev-manual/Bacula_Copyri_Tradem_Licens.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SD_USER=		_bacula-sd
BACULACONF=		/etc/bacula
BACULASTATE=		/var/bacula
SUBST_VARS=		SD_USER BACULACONF BACULASTATE TRUEPREFIX

CONFIGURE_STYLE=	simple
USE_GMAKE=		yes
NO_REGRESS=		yes

PSEUDO_FLAVORS=		no_bat no_server
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
			--with-archivedir=/tmp \
			--with-sbin-perm=755 \
			--without-x \
			--without-tcp-wrappers \
			--without-smtp-host \
			--without-job-email \
			--without-dump-email \
			--without-qwt \
			--disable-gnome \
			--disable-bwx-console \
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
			CONFIG_SITE=${PORTSDIR}/infrastructure/db/config.site \
			QMAKEQT4=${LOCALBASE}/bin/qmake4 \
			PKG_CONFIG_LIBDIR="${LOCALBASE}/lib/qt4/pkgconfig:${LOCALBASE}/lib/qt4"

.if ${FLAVOR:L:Mno_server}
CONFIGURE_ARGS+=	--enable-client-only
.else
MULTI_PACKAGES+=	-server
WANTLIB-server=		${WANTLIB} readline termcap
CONFIGURE_ARGS+=	--with-dir-user=_bacula \
			--with-dir-group=_bacula \
			--with-sd-user=${SD_USER} \
			--with-sd-group=_bacula

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
			--without-sqlite3 \
			--enable-batch-insert
LIB_DEPENDS+=		mysqlclient_r.>=18::databases/mysql
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
.endif # if no_server

LIB_DEPENDS-main=

.if ${FLAVOR:L:Mno_bat}
CONFIGURE_ARGS+=	--disable-bat
.else
CONFIGURE_ARGS+=	--enable-bat
WANTLIB-bat=		${WANTLIB} ICE SM X11 Xext
WANTLIB-bat+=		Xi Xinerama Xrender expat fontconfig freetype
WANTLIB-bat+=		glib-2.0 gobject-2.0 gthread-2.0 iconv intl png
WANTLIB-bat+=		pthread-stubs xcb
MULTI_PACKAGES+=	-bat
LIB_DEPENDS-bat=	QtCore,QtGui::x11/qt4
.endif

post-extract:
	@cp ${FILESDIR}/README-*.OpenBSD ${WRKSRC}/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/manpages/bat.1 \
		${WRKSRC}/src/qt-console/main.cpp \
		${WRKSRC}/README-client.OpenBSD ${WRKSRC}/README-server.OpenBSD

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bacula
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bacula-fd.conf \
		${PREFIX}/share/examples/bacula/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bacula
	${INSTALL_DATA} ${WRKSRC}/README-client.OpenBSD \
			${PREFIX}/share/doc/bacula/
.if !${FLAVOR:L:Mno_server}
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bacula-dir.conf \
		${WRKINST}/etc/bacula/bacula-sd.conf \
		${WRKINST}/etc/bacula/bconsole.conf \
		${PREFIX}/share/examples/bacula/
	${INSTALL_DATA} ${WRKSRC}/README-server.OpenBSD \
			${PREFIX}/share/doc/bacula/
.endif
.if !${FLAVOR:L:Mno_bat}
	${INSTALL_PROGRAM} ${WRKSRC}/src/qt-console/bat ${PREFIX}/sbin/
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bat.conf \
		${PREFIX}/share/examples/bacula/
.endif

.include <bsd.port.mk>
