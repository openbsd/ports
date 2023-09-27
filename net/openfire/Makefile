COMMENT=	XMPP real time collaboration server
V=		4.6.8
DISTNAME=	openfire_${V:S/./_/g}
PKGNAME=	openfire-$V
CATEGORIES=	net

SITES=	https://www.igniterealtime.org/downloadServlet?filename=openfire/

HOMEPAGE=	https://www.igniterealtime.org/projects/openfire/index.jsp

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# ASL 2.0
PERMIT_PACKAGE=	Yes

NO_BUILD=	yes
NO_TEST=	yes

MODULES=	java
MODJAVA_VER=	17
MODJAVA_JRE=	Yes

RUN_DEPENDS=	java/javaPathHelper

WRKDIST=	${WRKDIR}/openfire

OPENFIREDEST=	${PREFIX}/openfire
DATADIRS=	lib plugins resources
DOCDIRS=	documentation

do-install:
	rm -rf ${WRKDIST}/resources/nativeAuth
	cd ${WRKDIST} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${OPENFIREDEST}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${OPENFIREDEST}/{} \;
	cd ${WRKDIST} && \
		find ${DOCDIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/openfire/{} \; && \
		find ${DOCDIRS}/* ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${PREFIX}/share/doc/openfire \;
	${INSTALL_DATA_DIR} ${OPENFIREDEST}/logs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openfire/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openfire/security
	${INSTALL_DATA} ${WRKDIST}/conf/openfire.xml \
		${PREFIX}/share/examples/openfire/
	${INSTALL_DATA} ${WRKDIST}/conf/security.xml \
		${PREFIX}/share/examples/openfire/

.include <bsd.port.mk>
