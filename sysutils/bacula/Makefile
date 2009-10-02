# $OpenBSD: Makefile,v 1.16 2009/10/02 02:34:05 merdely Exp $

COMMENT-main=		network backup solution (client)
COMMENT-server=		network backup solution (server)
COMMENT-bat=		network backup solution (gui-client)

V=			3.0.2
DISTNAME=		bacula-$V
FULLPKGNAME-main=	bacula-client-$V
FULLPKGPATH-main=	${PKGPATH},-main
PKGNAME-server=		bacula-server-$V
FULLPKGNAME-bat=	bacula-bat-$V
FULLPKGPATH-bat=	${PKGPATH},-bat
CATEGORIES=		sysutils

SHARED_LIBS +=		bac		0.0 # .1.0
SHARED_LIBS +=		baccfg		0.0 # .1.0
SHARED_LIBS +=		bacpy		0.0 # .1.0
SHARED_LIBS +=		bacfind		0.0 # .1.0
SHARED_LIBS +=		bacsql		0.0 # .1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}
HOMEPAGE=		http://www.bacula.org/

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

WANTLIB=		c pthread crypto ssl z m stdc++

MULTI_PACKAGES=		-main

# GPLv2 with exception for OpenSSL (majority),
# FDL (docs), LGPL (some libraries), and PD
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
USE_LIBTOOL=		yes
NO_REGRESS=		yes

PSEUDO_FLAVORS=		no_bat no_server
FLAVORS=		pgsql mysql sqlite3 sqlite
FLAVOR?=		sqlite3

CONFIGURE_ARGS=		--enable-smartalloc \
			--prefix=${PREFIX} \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info \
			--docdir=${PREFIX}/share/doc/bacula \
			--htmldir=${PREFIX}/share/doc/bacula/html \
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
			--with-openssl \
			--with-basename=bacula \
			--with-hostname=bacula

MAKE_FLAGS=		NO_ECHO=
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
CONFIGURE_ARGS+=	--enable-client-only \
			--disable-build-dird \
			--disable-build-stored
.else
MULTI_PACKAGES+=	-server
WANTLIB-server=		${WANTLIB} readline termcap
LIB_DEPENDS-server=	bac,baccfg,bacfind,bacpy::sysutils/bacula,-main
CONFIGURE_ARGS+=	--with-dir-user=_bacula \
			--with-dir-group=_bacula \
			--with-sd-user=${SD_USER} \
			--with-sd-group=_bacula

BACKEND=
.if ${FLAVOR:L:Mpgsql}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--with-postgresql
LIB_DEPENDS-server+=	pq.>=2:postgresql-client-*:databases/postgresql
BACKEND=		postgresql
.else
CONFIGURE_ARGS+=	--without-postgresql
.endif

.if ${FLAVOR:L:Mmysql}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--with-mysql \
			--enable-batch-insert
LIB_DEPENDS-server+=	mysqlclient_r.>=18::databases/mysql
BACKEND=		mysql
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if ${FLAVOR:L:Msqlite3}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--with-sqlite3
LIB_DEPENDS-server+=	sqlite3.>=8::databases/sqlite3
BACKEND=		sqlite3
.else
CONFIGURE_ARGS+=	--without-sqlite3
.endif

.if ${FLAVOR:L:Msqlite}
.if !empty(BACKEND)
ERRORS+=		"Fatal: choose either pgsql or mysql or sqlite or sqlite3"
.endif
CONFIGURE_ARGS+=	--with-sqlite
LIB_DEPENDS-server+=	sqlite::databases/sqlite
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
WANTLIB-bat=		${WANTLIB} ICE SM X11 Xau Xdmcp Xext Xi Xinerama \
			Xrender expat fontconfig freetype gobject-2.0 glib-2.0 \
			gthread-2.0 iconv intl pcre png pthread-stubs xcb
MULTI_PACKAGES+=	-bat
RUN_DEPENDS-bat=	::devel/desktop-file-utils
LIB_DEPENDS-bat=	QtCore,QtGui::x11/qt4 \
			bac,baccfg::sysutils/bacula,-main
.endif

post-extract:
	@cp ${FILESDIR}/README-*.OpenBSD ${WRKSRC}/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/manpages/bat.1 \
		${WRKSRC}/src/qt-console/main.cpp \
		${WRKSRC}/scripts/bat.desktop.in \
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
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/bacula
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/bacula/updatedb
	${INSTALL_SCRIPT} ${WRKSRC}/updatedb/* ${PREFIX}/libexec/bacula/updatedb
.endif
.if !${FLAVOR:L:Mno_bat}
	${INSTALL_PROGRAM} ${WRKSRC}/src/qt-console/.libs/bat ${PREFIX}/sbin/
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bat.conf \
		${PREFIX}/share/examples/bacula/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/src/qt-console/images/bat_icon.png \
		${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/scripts/bat.desktop ${PREFIX}/share/applications
.endif

.include <bsd.port.mk>
