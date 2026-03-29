COMMENT=		mobile device management server

V=			5.38.1
GH_ACCOUNT=		h-mdm
GH_PROJECT=		hmdm-server
GH_TAGNAME=		v${V}

SITES.war=		https://h-mdm.com/files/
DISTFILES.war=		hmdm-${V}-os.war

EXTRACT_ONLY=		hmdm-server-${V}.tar.gz

CATEGORIES=		misc

HOMEPAGE=		https://h-mdm.com/

MAINTAINER=		Chaz Kettleson <chaz@pyr3x.com>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		java
MODJAVA_VER=		17

RUN_DEPENDS=		databases/postgresql
RUN_DEPENDS+=		java/javaPathHelper
RUN_DEPENDS+=		www/tomcat/v9

NO_BUILD=		Yes
NO_TEST=		Yes

HMDM_APK_VERSION=	6.31
HMDM_APK=		hmdm-${HMDM_APK_VERSION}-os.apk
HMDM_SERVER_DIR=	/var/tomcat/work/hmdm-server
HMDM_LANGUAGE=		en

SUBST_VARS+=		HMDM_APK_VERSION HMDM_APK HMDM_SERVER_DIR HMDM_LANGUAGE

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hmdm-server/
	${INSTALL_DATA} ${DISTDIR}/hmdm-${V}-os.war \
		${PREFIX}/share/hmdm-server/ROOT.war
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hmdm-server
	${SUBST_CMD} -c ${WRKSRC}/install/context_template.xml \
		${WRKDIR}/ROOT.xml
	${INSTALL_DATA} ${WRKDIR}/ROOT.xml \
		${PREFIX}/share/examples/hmdm-server/
	${SUBST_CMD} -c ${WRKSRC}/install/sql/hmdm_init.${HMDM_LANGUAGE}.sql \
		${WRKDIR}/hmdm-server_init.${HMDM_LANGUAGE}.sql
	${INSTALL_DATA} ${WRKDIR}/hmdm-server_init.${HMDM_LANGUAGE}.sql \
		${PREFIX}/share/examples/hmdm-server/
	${SUBST_CMD} -c ${WRKSRC}/install/log4j_template.xml \
		${WRKDIR}/log4j-hmdm-server.xml
	${INSTALL_DATA} ${WRKDIR}/log4j-hmdm-server.xml \
		${PREFIX}/share/examples/hmdm-server/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hmdm-server/emails/
		cd ${WRKSRC}/install/emails && \
		pax -rw . ${PREFIX}/share/examples/hmdm-server/emails/

.include <bsd.port.mk>
