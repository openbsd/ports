COMMENT=	MS-DOS Telix-like serial communication program

DISTNAME=	minicom-2.8
CATEGORIES=	comms
MASTER_SITES=	https://salsa.debian.org/minicom-team/minicom/-/archive/2.8/

HOMEPAGE=	https://salsa.debian.org/minicom-team/minicom

LIB_DEPENDS=	devel/gettext,-runtime
RUN_DEPENDS=	comms/kermit \
		comms/lrzsz

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv intl curses

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
	@find ${PREFIX}/share/examples/minicom -name Makefile\* -delete

.include <bsd.port.mk>
