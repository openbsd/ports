# $OpenBSD: Makefile,v 1.8 2020/02/28 07:45:04 remi Exp $

COMMENT =		config backup and policy check for network devices

V =			0.14.1
DISTNAME =		netshot_${V}
PKGNAME =		${DISTNAME:S/_/-/}
WRKDIST =		${WRKDIR}

CATEGORIES =		sysutils

HOMEPAGE =		http://www.netfishers.onl/netshot

MAINTAINER =		Remi Locherer <remi@openbsd.org>

# GPLv3+ (included libraries: Apache1+2 BSD GPLv2 LGPL2.1 MIT)
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/netfishers-onl/Netshot/releases/download/v${V}/

EXTRACT_SUFX =		.zip

MODULES =		java
# when changing MODJAVA_VER: adpat jdk path in README
MODJAVA_VER =		1.8

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS =		VARBASE

do-configure:
	${SUBST_CMD} ${WRKSRC}/netshot.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/netshot/drivers \
		${PREFIX}/share/{doc,examples}/netshot
	${INSTALL_DATA} ${WRKSRC}/netshot.jar ${PREFIX}/netshot
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/netshot
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/netshot
	${INSTALL_DATA} ${WRKSRC}/netshot.conf ${PREFIX}/share/examples/netshot

.include <bsd.port.mk>
