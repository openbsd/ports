# $OpenBSD: Makefile,v 1.18 2019/07/14 02:16:50 naddy Exp $

COMMENT=		several programs to handle macintosh files and archives
DISTNAME=		macutil2.0b3
PKGNAME=		macutil-2.0b3
CATEGORIES=		archivers

# None
PERMIT_PACKAGE=		No
PERMIT_DISTFILES=	No

REVISION =	3
WANTLIB=		c

MASTER_SITES=	https://spacehopper.org/mirrors/ \
		ftp://ftp.rz.hu-berlin.de/pub/mirrors/www.ibiblio.org/distfiles/
# XXX hu-berlin fails with EPSV
EXTRACT_SUFX=		.shar.Z

MAKE_FILE=		makefile
WRKDIST=		${WRKDIR}/macutil
MAKE_ENV=		CF="${CFLAGS}" \
			CC=${CC}

NO_TEST=		Yes

post-extract:
	@rm ${WRKDIST}/doc/README.crc.orig

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/macunpack/macunpack \
		${WRKDIST}/hexbin/hexbin \
		${WRKDIST}/mixed/macsave \
		${WRKDIST}/mixed/macstream \
		${WRKDIST}/binhex/binhex \
		${WRKDIST}/comm/tomac \
		${WRKDIST}/comm/frommac ${PREFIX}/bin

	${INSTALL_MAN} ${WRKDIST}/man/macunpack.1 \
		${WRKDIST}/man/hexbin.1 \
		${WRKDIST}/man/macsave.1 \
		${WRKDIST}/man/macstream.1 \
		${WRKDIST}/man/binhex.1 \
		${WRKDIST}/man/tomac.1 \
		${WRKDIST}/man/frommac.1 \
		${WRKDIST}/man/macutil.1 ${PREFIX}/man/man1
	
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/macutil
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/macutil
	
.include <bsd.port.mk>
