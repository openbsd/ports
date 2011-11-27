# $OpenBSD: Makefile,v 1.37 2011/11/27 17:02:25 ajacoutot Exp $

COMMENT-main=		network backup solution (client)
COMMENT-server=		network backup solution (server)
COMMENT-bat=		network backup solution (gui-client)

V=			5.2.1
DISTNAME=		bacula-$V
FULLPKGNAME-main=	bacula-client-$V
FULLPKGPATH-main=	${PKGPATH},-main
PKGNAME-server=		bacula-server-$V
FULLPKGNAME-bat=	bacula-bat-$V
FULLPKGPATH-bat=	${PKGPATH},-bat
CATEGORIES=		sysutils

REVISION-main=		2
REVISION-server=	2
REVISION-bat=		2

SHARED_LIBS +=  bac                  2.0      # 5.2.1
SHARED_LIBS +=  baccfg               2.0      # 5.2.1
SHARED_LIBS +=  bacpy                2.0      # 5.2.1
SHARED_LIBS +=  bacfind              2.0      # 5.2.1
SHARED_LIBS +=  bacsql               2.0      # 5.2.1
SHARED_LIBS +=  baccats              0.0      # 5.2.1

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}
HOMEPAGE=		http://www.bacula.org/

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

WANTLIB += c pthread crypto ssl z m stdc++

# AGPLv3 with exception for OpenSSL (majority),
# FDL (docs), LGPL (some libraries), and PD
# http://bacula.org/en/dev-manual/main/main/Bacula_Copyright_Trademark_.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BACULACONF=		/etc/bacula
BACULASTATE=		/var/bacula
SUBST_VARS=		BACULACONF BACULASTATE TRUEPREFIX

CONFIGURE_STYLE=	simple
USE_GMAKE=		yes
USE_GROFF=		yes
USE_LIBTOOL=		yes
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
			--with-fd-user=root \
			--with-fd-group=wheel \
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
			--disable-gnome \
			--disable-bwx-console \
			--disable-tray-monitor \
			--disable-nls \
			--disable-conio \
			--enable-readline \
			--with-readline=/usr \
			--with-openssl \
			--with-basename=bacula \
			--with-hostname=bacula

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
CONFIGURE_ENV+=		ac_cv_func_${ac_func}=no
.endfor

.include <bsd.port.arch.mk>

WANTLIB-server += ${WANTLIB} bac baccfg bacfind bacpy lzo2
LIB_DEPENDS-server=	sysutils/bacula,-main

.if !${BUILD_PACKAGES:M-server}
CONFIGURE_ARGS+=	--enable-client-only \
			--disable-build-dird \
			--disable-build-stored
.else
SHARED_LIBS +=		baccats-${BACKEND} 0.0 # sync with LIBbaccats_VERSION
CONFIGURE_ARGS+=	--with-dir-user=_bacula \
			--with-dir-group=_bacula \
			--with-sd-user=_bacula-sd \
			--with-sd-group=_bacula

.  if ${FLAVOR:Mpgsql}
WANTLIB-server += pq>=2 com_err
CONFIGURE_ARGS+=	--with-postgresql
LIB_DEPENDS-server+=	databases/postgresql
BACKEND += 		postgresql
.  else
CONFIGURE_ARGS+=	--without-postgresql
.  endif

.  if ${FLAVOR:Mmysql}
WANTLIB-server += mysqlclient_r>=18
CONFIGURE_ARGS+=	--with-mysql \
			--enable-batch-insert
LIB_DEPENDS-server+=	databases/mysql
BACKEND+=		mysql
.  else
CONFIGURE_ARGS+=	--without-mysql
.  endif

.  if ${FLAVOR:Msqlite3}
WANTLIB-server += sqlite3>=8
CONFIGURE_ARGS+=	--with-sqlite3
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

WANTLIB-main += ${WANTLIB} lzo2 ncurses readline
LIB_DEPENDS-main=	archivers/lzo2

WANTLIB-bat += ${WANTLIB}
WANTLIB-bat += ICE QtCore QtGui SM X11 Xext Xi Xinerama Xrender bac
WANTLIB-bat += baccfg bacfind expat fontconfig freetype xcb
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
.if ${BUILD_PACKAGES:M-server}
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/bacula/updatedb
	${INSTALL_SCRIPT} ${WRKSRC}/updatedb/* ${PREFIX}/libexec/bacula/updatedb
	rm ${PREFIX}/libexec/bacula/updatedb/update*.in
	rm ${PREFIX}/lib/libbaccats.*
	cd ${PREFIX}/lib && \
		ln -sf libbaccats-${BACKEND}.so.${LIBbaccats_VERSION} libbaccats.so.${LIBbaccats_VERSION} 
.endif
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
	rm ${PREFIX}/man/man1/bacula-{bwxconsole,tray-monitor}.1
	rmdir ${WRKINST}/{etc,var}/bacula

.include <bsd.port.mk>
