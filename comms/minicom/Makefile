# $OpenBSD: Makefile,v 1.60 2016/04/12 15:19:39 naddy Exp $

COMMENT=		MS-DOS Telix-like serial communication program

DISTNAME=		minicom-2.7
CATEGORIES=		comms
MASTER_SITES=		https://www.alioth.debian.org/frs/download.php/latestfile/3/
REVISION=		0

HOMEPAGE=		http://alioth.debian.org/projects/minicom/

LIB_DEPENDS=		devel/gettext
RUN_DEPENDS=		comms/kermit \
			comms/lrzsz

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv intl ncurses

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=		--enable-cfg-dir=${SYSCONFDIR}/minicom \
			--enable-lock-dir=/var/spool/lock \
			--enable-dfl-port=/dev/cua00 \
			--enable-dfl-baud=9600

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
