# $OpenBSD: Makefile,v 1.45 2006/02/08 04:54:48 david Exp $

COMMENT=		"MS-DOS Telix-like serial communication program"

VER=			2.00.0
DISTNAME=		minicom-${VER}.src
PKGNAME=		minicom-${VER}p1
CATEGORIES=		comms
MASTER_SITES=		${MASTER_SITE_SUNSITE:=apps/serialcomm/dialout/}

HOMEPAGE=		http://www.netsonic.fi/~walker/minicom.html

MODULES=		devel/gettext
RUN_DEPENDS=		::comms/kermit \
			::comms/lrzsz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

WRKDIST=		${WRKDIR}/minicom-${VER}

COPTS+=			-DHAS_EUID
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=		--enable-cfg-dir=${SYSCONFDIR}/minicom \
			--enable-lock-dir=/var/spool/lock

pre-configure:
	@perl -pi -e "s@/usr/local/bin/@${LOCALBASE}/bin/@g;s@/sz@/lsz@g; \
		s@/sb@/lsb@g;s@/sx@/lsx@g;s@/rz@/lrz@g;s@/rb@/lrb@g; \
		s@/rx@/lrx@g" ${WRKSRC}/src/rwconf.c


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/minicom
	${INSTALL_DATA} ${WRKDIST}/doc/minicom.users \
		${PREFIX}/share/examples/minicom/minicom.users.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minicom
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/minicom
	@rm ${PREFIX}/share/doc/minicom/Makefile*
	${INSTALL_DATA} ${WRKDIST}/AUTHORS ${PREFIX}/share/doc/minicom
	${INSTALL_DATA} ${WRKDIST}/COPYING ${PREFIX}/share/doc/minicom
	${INSTALL_DATA} ${WRKDIST}/ChangeLog ${PREFIX}/share/doc/minicom
	@(umask 022; cp -RP ${WRKDIST}/extras ${PREFIX}/share/examples/minicom)
	@find ${PREFIX}/share/examples/minicom -name Makefile\* \
		-exec rm -f {} \;

.include <bsd.port.mk>
