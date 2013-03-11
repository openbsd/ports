# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:30 espie Exp $

COMMENT=		log file monitoring daemon

DISTNAME=		logfmon-1.1
REVISION=		0
CATEGORIES=		sysutils

HOMEPAGE=		http://sourceforge.net/projects/logfmon/

MAINTAINER=		Tom Doherty <tom@singlesecond.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=logfmon/}

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/logfmon
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/logfmon

.include <bsd.port.mk>
