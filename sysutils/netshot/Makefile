# $OpenBSD: Makefile,v 1.1.1.1 2018/08/28 11:25:53 remi Exp $

COMMENT =		config backup and policy check for network devices

DISTNAME =		netshot_0.8.1
PKGNAME =		${DISTNAME:S/_/-/}

CATEGORIES =		sysutils

HOMEPAGE =		http://www.netfishers.onl/netshot

MAINTAINER =		Remi Locherer <remi@openbsd.org>

# GPLv3+ (included libraries: Apache1+2 BSD GPLv2 LGPL2.1 MIT)
PERMIT_PACKAGE_CDROM =	YES

MASTER_SITES =		http://www.netfishers.onl/downloads/

EXTRACT_SUFX =		.zip

MODULES =		java
MODJAVA_VER =		1.8+
MODJAVA_JRERUN =	YES

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS =		VARBASE

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/netshot/drivers \
		${PREFIX}/share/{doc,examples}/netshot
	${INSTALL_DATA} ${WRKDIR}/netshot.jar ${PREFIX}/netshot
	${INSTALL_DATA} ${WRKDIR}/COPYING ${PREFIX}/share/doc/netshot
	${INSTALL_DATA} ${WRKDIR}/*.txt ${PREFIX}/share/doc/netshot
	${INSTALL_DATA} ${WRKDIR}/netshot.conf ${PREFIX}/share/examples/netshot

.include <bsd.port.mk>
