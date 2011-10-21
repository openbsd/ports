# $OpenBSD: Makefile,v 1.32 2011/10/21 17:04:23 espie Exp $

COMMENT-main=		network backup solution (client)
COMMENT-server=		network backup solution (server)
COMMENT-bat=		network backup solution (gui-client)

V=			5.0.2
DISTNAME=		bacula-$V
FULLPKGNAME-main=	bacula-client-$V
FULLPKGPATH-main=	${PKGPATH},-main
PKGNAME-server=		bacula-server-$V
FULLPKGNAME-bat=	bacula-bat-$V
FULLPKGPATH-bat=	${PKGPATH},-bat
CATEGORIES=		sysutils

REVISION-main=		3
REVISION-server=	3
REVISION-bat=		1

SHARED_LIBS +=		bac		1.0 # .1.0
SHARED_LIBS +=		baccfg		1.0 # .1.0
SHARED_LIBS +=		bacpy		1.0 # .1.0
SHARED_LIBS +=		bacfind		1.0 # .1.0
SHARED_LIBS +=		bacsql		1.0 # .1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}
HOMEPAGE=		http://www.bacula.org/

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

WANTLIB=		c pthread crypto ssl z m stdc++

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
USE_GROFF =		Yes
NO_REGRESS=		yes

PSEUDO_FLAVORS=		no_bat no_server
FLAVORS=		pgsql mysql sqlite3

.if !defined(FLAVOR) || empty(FLAVOR)
FLAVOR =		sqlite3
.endif

MULTI_PACKAGES=		-main -server -bat

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
			QMAKEBIN4=qmake4 \
			QMAKE=${LOCALBASE}/bin/${QMAKEBIN4} \
			PKG_CONFIG_LIBDIR="${LOCALBASE}/lib/qt4/pkgconfig:${LOCALBASE}/lib/qt4"

# configure mistakenly assumes xattr support if it finds any of the
# openat() family of functions, so poison the autoconf cache.
# None of these functions are used outside the code for Solaris xattr 
# as of 5.0.2.
.for ac_func in openat fstatat unlinkat fchownat futimesat
CONFIGURE_ENV+=		ac_cv_func_${ac_func}=no
.endfor

.include <bsd.port.arch.mk>

WANTLIB-server=		${WANTLIB} bac baccfg bacfind bacpy readline termcap
LIB_DEPENDS-server=	sysutils/bacula,-main

.if !${BUILD_PACKAGES:M-server}
CONFIGURE_ARGS+=	--enable-client-only \
			--disable-build-dird \
			--disable-build-stored
.else
CONFIGURE_ARGS+=	--with-dir-user=_bacula \
			--with-dir-group=_bacula \
			--with-sd-user=${SD_USER} \
			--with-sd-group=_bacula

.  if ${FLAVOR:Mpgsql}
CONFIGURE_ARGS+=	--with-postgresql
WANTLIB-server+=	pq>=2
LIB_DEPENDS-server+=	databases/postgresql
BACKEND += 		postgresql
.  else
CONFIGURE_ARGS+=	--without-postgresql
.  endif

.  if ${FLAVOR:Mmysql}
CONFIGURE_ARGS+=	--with-mysql \
			--enable-batch-insert
WANTLIB-server+=	mysqlclient_r>=18
LIB_DEPENDS-server+=	databases/mysql
BACKEND+=		mysql
.  else
CONFIGURE_ARGS+=	--without-mysql
.  endif

.  if ${FLAVOR:Msqlite3}
CONFIGURE_ARGS+=	--with-sqlite3
WANTLIB-server+=	sqlite3>=8
LIB_DEPENDS-server+=	databases/sqlite3
BACKEND+=		sqlite3
.  else
CONFIGURE_ARGS+=	--without-sqlite3
.  endif

SUBST_VARS+=		BACKEND
.  if !defined(BACKEND) || (${BACKEND} != "mysql" && ${BACKEND} != "sqlite3" && ${BACKEND} != "postgresql")
ERRORS+=		"Fatal: choose one of pgsql or mysql or sqlite3"
.  endif
.endif # server

LIB_DEPENDS-main=

WANTLIB-bat +=		QtCore QtGui bac baccfg c crypto m pthread ssl stdc++
RUN_DEPENDS-bat=	devel/desktop-file-utils
LIB_DEPENDS-bat=	x11/qt4 \
			sysutils/bacula,-main

.if !${BUILD_PACKAGES:M-bat}
CONFIGURE_ARGS+=	--disable-bat
.else
CONFIGURE_ARGS+=	--enable-bat
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/manpages/bat.1 \
		${WRKSRC}/src/qt-console/main.cpp \
		${WRKSRC}/scripts/bat.desktop.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bacula
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bacula-fd.conf \
		${PREFIX}/share/examples/bacula/
.if ${BUILD_PACKAGES:M-server}
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bacula-dir.conf \
		${WRKINST}/etc/bacula/bacula-sd.conf \
		${WRKINST}/etc/bacula/bconsole.conf \
		${PREFIX}/share/examples/bacula/
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/bacula/updatedb
	${INSTALL_SCRIPT} ${WRKSRC}/updatedb/* ${PREFIX}/libexec/bacula/updatedb
.endif
.if ${BUILD_PACKAGES:M-bat}
	if [ -f ${PREFIX}/lib/libbac.so.${LIBbac_VERSION} ] ; then \
		${INSTALL_PROGRAM} ${WRKSRC}/src/qt-console/.libs/bat ${PREFIX}/sbin/; \
	else \
		${INSTALL_PROGRAM} ${WRKSRC}/src/qt-console/bat ${PREFIX}/sbin/; \
	fi
	${INSTALL_DATA} ${WRKINST}/etc/bacula/bat.conf \
		${PREFIX}/share/examples/bacula/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/src/qt-console/images/bat_icon.png \
		${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/scripts/bat.desktop ${PREFIX}/share/applications
.endif

.include <bsd.port.mk>
