# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:53 sthen Exp $

COMMENT =		manage SQL database schemas via config files

VERSION =		3.5.1
DISTNAME =		liquibase-${VERSION}-bin
PKGNAME =		liquibase-${VERSION}
WRKDIST =		${WRKDIR}
CATEGORIES =		databases
REVISION =		2

HOMEPAGE =		http://liquibase.org/
MAINTAINER =		Bryan Everly <bryan@bceassociates.com>

# Apache 2.0
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =		java/javaPathHelper

MASTER_SITES =		https://github.com/liquibase/liquibase/releases/download/liquibase-parent-${VERSION}/

MODULES =		java
# XXX when updating please confirm if this is 1.8 only or if 11 is also ok (in which case, switch to 1.8+)
MODJAVA_VER =		1.8

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/liquibase
	${INSTALL_DATA} ${FILESDIR}/liquibase.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKDIR}/liquibase.jar ${PREFIX}/share/java/classes/liquibase
	${SUBST_PROGRAM} ${WRKDIR}/liquibase ${PREFIX}/bin/liquibase

.include <bsd.port.mk>
