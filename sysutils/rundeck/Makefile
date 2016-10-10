# $OpenBSD: Makefile,v 1.1.1.1 2016/10/10 17:19:47 jasper Exp $

COMMENT=		job scheduler and runbook automation

V=			2.6.9
DISTNAME=		rundeck-launcher-${V}
PKGNAME=		rundeck-${V}

CATEGORIES=		sysutils

HOMEPAGE=		http://rundeck.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://dl.bintray.com/rundeck/rundeck-maven/
EXTRACT_SUFX=		.jar
EXTRACT_ONLY=		# empty

MODULES=		java
MODJAVA_VER=		1.7+
MODJAVA_JRERUN=		Yes

RUN_DEPENDS=		java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/rundeck-${V}

PREFIX =		${VARBASE}
RDECK_BASE =		${PREFIX}/rundeck
SUBST_VARS +=		RDECK_BASE

CONFIG_FILES =		server/exp/webapp/WEB-INF/classes/log4j.properties \
			server/config/rundeck-config.properties \
			server/config/jaas-loginmodule.conf

do-extract:
	mkdir ${WRKDIST}
	cd ${WRKSRC} && \
		${LOCALBASE}/jdk-1.7.0/bin/java -jar ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		--installonly -b .
	sed -i -e "s,^grails.serverURL=.*,grails.serverURL=http://localhost:4440," \
		-e "s,^rdeck.base=.*,rdeck.base=${PREFIX}/rundeck," \
		${WRKSRC}/server/config/rundeck-config.properties
.for c in ${CONFIG_FILES}
	sed -i "s,$$(readlink -f ${WRKDIST}),${PREFIX}/rundeck,g" ${WRKSRC}/$c
.endfor

# First we install the modified configuration files. These files are not
# overwritten when the jar unpacks itself into ${RDECK_BASE}
do-install:
	${INSTALL_DATA_DIR} ${RDECK_BASE}/etc/
.for c in ${CONFIG_FILES}
	${INSTALL_DATA_DIR} ${RDECK_BASE}/$$(dirname ${c})
	${INSTALL_DATA} ${WRKSRC}/$c ${RDECK_BASE}/$c
.endfor
	for f in ${FILESDIR}/*; do \
		${SUBST_CMD} -m ${SHAREMODE} -c $$f \
			${RDECK_BASE}/etc/$$(basename $$f).dist; \
	done
	${INSTALL_DATA} ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${RDECK_BASE}/rundeck-launcher.jar

.include <bsd.port.mk>
