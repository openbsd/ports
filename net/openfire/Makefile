# $OpenBSD: Makefile,v 1.30 2014/03/16 01:34:31 sthen Exp $

COMMENT=	XMPP real time collaboration server
V=		3.9.1
DISTNAME=	openfire_src_${V:S/./_/g}
PKGNAME=	openfire-$V
CATEGORIES=	net

MASTER_SITES=	http://www.igniterealtime.org/downloadServlet?filename=openfire/

HOMEPAGE=	http://www.igniterealtime.org/projects/openfire/index.jsp

# ASL 2.0
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	yes

MODULES=	java
MODJAVA_VER=	1.7+
MODJAVA_JRE=	Yes
MODJAVA_BUILD=	ant

RUN_DEPENDS=	java/javaPathHelper

WRKDIST=	${WRKDIR}/openfire_src
WRKSRC=		${WRKDIST}/build/

OPENFIREDEST=	${PREFIX}/openfire
DATADIRS=	lib logs plugins resources

pre-install:
	rm -rf ${WRKDIST}/target/openfire/resources/nativeAuth
	mv ${WRKDIST}/target/openfire/resources/security ${WRKBUILD}

do-install:
	cd ${WRKDIST}/target/openfire && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${OPENFIREDEST}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${OPENFIREDEST}/{} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/openfire
	${INSTALL_DATA} ${WRKDIST}/documentation/docs/*-guide.html \
		${PREFIX}/share/doc/openfire
	${INSTALL_DATA} ${WRKDIST}/documentation/docs/database.html \
		${PREFIX}/share/doc/openfire
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openfire/security
	${INSTALL_DATA} ${WRKDIST}/target/openfire/conf/openfire.xml \
		${PREFIX}/share/examples/openfire
	${INSTALL_DATA} ${WRKBUILD}/security/* \
		${PREFIX}/share/examples/openfire/security

.include <bsd.port.mk>
