# $OpenBSD: Makefile,v 1.2 2016/09/02 18:00:40 sthen Exp $

COMMENT =		manage SQL database schemas via config files

VERSION =		3.5.1
DISTNAME =		liquibase-${VERSION}-bin
PKGNAME =		liquibase-${VERSION}
WRKDIST =		${WRKDIR}
CATEGORIES =		databases

HOMEPAGE =		http://liquibase.org/
MAINTAINER =            Bryan Everly <bryan@bceassociates.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS =		java/javaPathHelper

MASTER_SITES =		https://github.com/liquibase/liquibase/releases/download/liquibase-parent-${VERSION}/

MODULES =		java
MODJAVA_VER = 		1.8
MODJAVA_JRERUN =	yes

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/liquibase
	${INSTALL_DATA} ${FILESDIR}/liquibase.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKDIR}/liquibase.jar ${PREFIX}/share/java/classes/liquibase
	${SUBST_PROGRAM} ${WRKDIR}/liquibase ${PREFIX}/bin/liquibase

.include <bsd.port.mk>
