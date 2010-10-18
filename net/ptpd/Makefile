# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:57 espie Exp $

COMMENT=	Precision Time Protocol daemon

DISTNAME=	ptpd-1.0.0
CATEGORIES=	net
HOMEPAGE=	http://ptpd.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ptpd/}

WANTLIB=	c

WRKSRC=		${WRKDIST}/src
MAKE_FLAGS=	CFLAGS="${CFLAGS}"
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ptpd ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/ptpd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ptpd
	${INSTALL_DATA} ${WRKDIST}/doc/* ${WRKDIST}/tools/* \
	    ${PREFIX}/share/doc/ptpd

.include <bsd.port.mk>
