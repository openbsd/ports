# $OpenBSD: Makefile,v 1.4 2002/05/11 00:31:22 espie Exp $

COMMENT=	"remote identd fingerprinting tool"

DISTNAME=	ldistfp-0.1.4
CATEGORIES=	net security
NEED_VERSION=	1.515
HOMEPAGE=	http://www.team-teso.net/
MASTER_SITES=	${HOMEPAGE}releases/

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

PERMIT_PACKAGE_CDROM=   "no license"
PERMIT_PACKAGE_FTP=     "no license"
PERMIT_DISTFILES_CDROM= "no license"
PERMIT_DISTFILES_FTP=   "no license"

FINGERPRINTS=	${PREFIX}/share/ldistfp/ldistfp-auth-fingerprints
MAKE_FLAGS=	CC='${CC}' \
		CFLAGS='${CFLAGS} -DFINGERPRINTS=\"${FINGERPRINTS}\"'

WRKDIST=	${WRKDIR}/ldistfp
WRKSRC=		${WRKDIST}/src

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bin/ldistfp ${PREFIX}/bin/ldistfp
	${INSTALL_DATA_DIR} ${PREFIX}/share/ldistfp
	${INSTALL_DATA} ${WRKDIST}/bin/ldistfp-auth-fingerprints ${PREFIX}/share/ldistfp
	${INSTALL_DATA} ${WRKDIST}/contrib/stat.awk ${PREFIX}/share/ldistfp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ldistfp
	${INSTALL_DATA} ${WRKDIST}/doc/README ${PREFIX}/share/doc/ldistfp

.include <bsd.port.mk>
