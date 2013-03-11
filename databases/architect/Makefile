# $OpenBSD: Makefile,v 1.17 2013/03/11 02:52:04 espie Exp $

PKG_ARCH=		*

COMMENT=		database exploration/builder written in Java

V=			1.0.6
DISTNAME=		SQL-Power-Architect-generic-jdbc-${V}
MASTER_SITES=		http://power-architect.googlecode.com/files/
PKGNAME=		architect-${V}
CATEGORIES=		databases
WRKDIST=		${WRKDIR}/architect-${V}/

REVISION=		2

HOMEPAGE=		http://www.sqlpower.ca/page/architect

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		java
MODJAVA_VER =		1.6+

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/architect/jdbc
	${INSTALL_DATA} ${WRKDIST}/jdbc/* ${PREFIX}/architect/jdbc
	${INSTALL_DATA} ${WRKDIST}/architect.jar ${WRKDIST}/lib/* ${PREFIX}/architect/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/architect
	${INSTALL_PROGRAM} ${FILESDIR}/architect ${PREFIX}/bin 

.include <bsd.port.mk>
