# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:44 sthen Exp $

# ptpd-1.x implements PTPv1 (IEEE 1588-2002)
# ptpd-2.x implements PTPv2 (IEEE 1588-2008)
# PTPv2 is not backward compatible with PTPv1.
PORTROACH=	limit:^1\.

COMMENT=	Precision Time Protocol daemon (IEEE 1588-2002)

DISTNAME=	ptpd-1.1.0
CATEGORIES=	net
HOMEPAGE=	http://ptpd.sourceforge.net/
REVISION=	0

# ISC
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ptpd/}

WANTLIB=	c

WRKSRC=		${WRKDIST}/src
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ptpd ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/ptpd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ptpd
	${INSTALL_DATA} ${WRKDIST}/doc/* ${WRKDIST}/tools/* \
	    ${PREFIX}/share/doc/ptpd

.include <bsd.port.mk>
