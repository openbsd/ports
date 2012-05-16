# $OpenBSD: Makefile,v 1.1.1.1 2012/05/16 06:10:18 jasper Exp $

COMMENT=		log file monitoring daemon

DISTNAME=		logfmon-1.1
CATEGORIES=		sysutils

HOMEPAGE=		http://sourceforge.net/projects/logfmon/

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
