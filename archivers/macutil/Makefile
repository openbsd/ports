# $OpenBSD: Makefile,v 1.5 2005/11/27 17:44:19 sturm Exp $

COMMENT=		"several programs to handle macintosh files and archives"
DISTNAME=		macutil2.0b3
PKGNAME=		macutil-2.0b3p0
CATEGORIES=		archivers

# None
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		c

MASTER_SITES=		ftp://ftp.cwi.nl/pub/dik/
EXTRACT_SUFX=		.shar.Z

MAKE_FILE=		makefile
WRKDIST=		${WRKDIR}/macutil
MAKE_ENV=		CF="${CFLAGS}" \
			CC=${CC}

NO_REGRESS=		Yes

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
