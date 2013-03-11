# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:48 espie Exp $

COMMENT=	remote identd fingerprinting tool

DISTNAME=	ldistfp-0.1.4
REVISION=	1
CATEGORIES=	net security

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/misc/}

PERMIT_PACKAGE_CDROM=   no license
PERMIT_PACKAGE_FTP=     no license
PERMIT_DISTFILES_FTP=   no license

WANTLIB=		c

FINGERPRINTS=	${PREFIX}/share/ldistfp/ldistfp-auth-fingerprints
MAKE_FLAGS=	CC='${CC}' \
		CFLAGS='${CFLAGS} -DFINGERPRINTS=\"${FINGERPRINTS}\"'

WRKDIST=	${WRKDIR}/ldistfp
WRKSRC=		${WRKDIST}/src

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bin/ldistfp ${PREFIX}/bin/ldistfp
	${INSTALL_DATA_DIR} ${PREFIX}/share/ldistfp
	${INSTALL_DATA} ${WRKDIST}/bin/ldistfp-auth-fingerprints ${PREFIX}/share/ldistfp
	${INSTALL_DATA} ${WRKDIST}/contrib/stat.awk ${PREFIX}/share/ldistfp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ldistfp
	${INSTALL_DATA} ${WRKDIST}/doc/README ${PREFIX}/share/doc/ldistfp

.include <bsd.port.mk>
