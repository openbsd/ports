# $OpenBSD: Makefile,v 1.56 2013/10/10 02:08:20 brad Exp $

COMMENT=		MS-DOS Telix-like serial communication program

DISTNAME=		minicom-2.6.2
REVISION=		0
CATEGORIES=		comms
MASTER_SITES=		http://alioth.debian.org/frs/download.php/3869/

HOMEPAGE=		http://alioth.debian.org/projects/minicom/

MODULES=		devel/gettext
RUN_DEPENDS=		comms/kermit \
			comms/lrzsz

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncurses

COPTS+=			-DHAS_EUID
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=		--enable-cfg-dir=${SYSCONFDIR}/minicom \
			--enable-lock-dir=/var/spool/lock \
			--enable-dfl-port=/dev/cua00 \
			--enable-dfl-baud=9600
USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/minicom
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
