# $OpenBSD: Makefile,v 1.7 2006/07/19 16:07:22 steven Exp $

COMMENT=	"remote identd fingerprinting tool"

DISTNAME=	ldistfp-0.1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net security

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/misc/}

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

PERMIT_PACKAGE_CDROM=   "no license"
PERMIT_PACKAGE_FTP=     "no license"
PERMIT_DISTFILES_CDROM= "no license"
PERMIT_DISTFILES_FTP=   "no license"
WANTLIB=		c

FINGERPRINTS=	${PREFIX}/share/ldistfp/ldistfp-auth-fingerprints
MAKE_FLAGS=	CC='${CC}' \
		CFLAGS='${CFLAGS} -DFINGERPRINTS=\"${FINGERPRINTS}\"'

WRKDIST=	${WRKDIR}/ldistfp
WRKSRC=		${WRKDIST}/src

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bin/ldistfp ${PREFIX}/bin/ldistfp
	${INSTALL_DATA_DIR} ${PREFIX}/share/ldistfp
	${INSTALL_DATA} ${WRKDIST}/bin/ldistfp-auth-fingerprints ${PREFIX}/share/ldistfp
	${INSTALL_DATA} ${WRKDIST}/contrib/stat.awk ${PREFIX}/share/ldistfp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ldistfp
	${INSTALL_DATA} ${WRKDIST}/doc/README ${PREFIX}/share/doc/ldistfp

.include <bsd.port.mk>
