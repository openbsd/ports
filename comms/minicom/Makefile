# $OpenBSD: Makefile,v 1.47 2007/05/23 16:40:55 ckuethe Exp $

COMMENT=		"MS-DOS Telix-like serial communication program"

DISTNAME=		minicom-2.2
CATEGORIES=		comms
MASTER_SITES=		http://alioth.debian.org/frs/download.php/1806/

HOMEPAGE=		http://alioth.debian.org/projects/minicom/
MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

MODULES=		devel/gettext
RUN_DEPENDS=		::comms/kermit \
			::comms/lrzsz

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

COPTS+=			-DHAS_EUID
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=		--enable-cfg-dir=${SYSCONFDIR}/minicom \
			--enable-lock-dir=/var/spool/lock \
			--enable-dfl-port=/dev/cua00 \
			--enable-dfl-baud=9600

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
