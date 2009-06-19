# $OpenBSD: Makefile,v 1.1.1.1 2009/06/19 01:09:36 jolan Exp $

COMMENT=	XMPP real time collaboration server
DISTNAME=	openfire_src_3_6_4
PKGNAME=	openfire-3.6.4
CATEGORIES=	net

MASTER_SITES=	http://www.igniterealtime.org/downloadServlet?filename=openfire/

HOMEPAGE=	http://www.igniterealtime.org/projects/openfire/index.jsp

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=java
MODJAVA_VER=   1.7+

BUILD_DEPENDS=	::devel/apache-ant

MAKE_ENV+=      JAVA_HOME=${JAVA_HOME}
WRKDIST=	${WRKDIR}/openfire_src

OPENFIREDEST=	${PREFIX}/openfire
DATADIRS=	lib logs plugins resources

SUBST_VARS=	PREFIX

post-configure:
	@sed -e "s|__LOCALBASE__|${LOCALBASE}|g ; s|__PREFIX__|${PREFIX}|g" ${FILESDIR}/openfirectl.template > ${WRKBUILD}/openfirectl

do-build:
	cd ${WRKSRC}/build && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant

# BAHLEET non-OpenBSD shitz0rz
pre-install:
	rm -rf ${WRKSRC}/target/openfire/resources/nativeAuth
	mv ${WRKSRC}/target/openfire/resources/security ${WRKBUILD}

do-install:
	cd ${WRKSRC}/target/openfire && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${OPENFIREDEST}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${OPENFIREDEST}/{} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/openfire
	${INSTALL_DATA} ${WRKSRC}/documentation/docs/*-guide.html \
		${PREFIX}/share/doc/openfire
	${INSTALL_DATA} ${WRKSRC}/documentation/docs/database.html \
		${PREFIX}/share/doc/openfire	
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/openfire
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openfire/security
	${INSTALL_DATA} ${WRKSRC}/target/openfire/conf/openfire.xml \
		${PREFIX}/share/examples/openfire
	${INSTALL_DATA} ${WRKBUILD}/security/* \
		${PREFIX}/share/examples/openfire/security
	${INSTALL_SCRIPT} ${WRKBUILD}/openfirectl ${PREFIX}/sbin

.include <bsd.port.mk>
