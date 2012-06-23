# $OpenBSD: Makefile,v 1.2 2012/06/23 10:33:32 jasper Exp $

COMMENT=		log file monitoring daemon

DISTNAME=		logfmon-1.1
REVISION=		0
CATEGORIES=		sysutils

HOMEPAGE=		http://sourceforge.net/projects/logfmon/

MAINTAINER=		Tom Doherty <tom@singlesecond.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=logfmon/}

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/logfmon
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/logfmon

.include <bsd.port.mk>
