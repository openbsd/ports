# $OpenBSD: Makefile,v 1.13 2011/05/22 14:03:39 jasper Exp $

PKG_ARCH=		*

COMMENT=		database exploration/builder written in Java

V=			1.0.6
DISTNAME=		SQL-Power-Architect-generic-jdbc-${V}
MASTER_SITES=		http://power-architect.googlecode.com/files/
PKGNAME=		architect-${V}
CATEGORIES=		databases
WRKDIST=		${WRKDIR}/architect-${V}/

HOMEPAGE=		http://www.sqlpower.ca/page/architect

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		java
MODJAVA_VER =		1.6+

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/architect/jdbc
	${INSTALL_DATA} ${WRKDIST}/jdbc/* ${PREFIX}/architect/jdbc
	${INSTALL_DATA} ${WRKDIST}/architect.jar ${WRKDIST}/lib/* ${PREFIX}/architect/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/architect
	${INSTALL_PROGRAM} ${FILESDIR}/architect ${PREFIX}/bin 

.include <bsd.port.mk>
