# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:17 sthen Exp $

COMMENT =	Apache-Tomcat AJP Connector for Apache2

V =		1.2.41
DISTNAME =	tomcat-connectors-${V}-src
PKGNAME =	ap2-mod_jk-${V}
CATEGORIES =	www
REVISION =	1

HOMEPAGE =	http://tomcat.apache.org/connectors-doc/index.html

# Apache Software License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	pthread

MASTER_SITES =	${MASTER_SITE_APACHE:=tomcat/tomcat-connectors/jk/}

RUN_DEPENDS =	www/apache-httpd
BUILD_DEPENDS =	${RUN_DEPENDS}

USE_GMAKE =	Yes
NO_TEST =	Yes

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--with-apxs=${LOCALBASE}/sbin/apxs2

WRKSRC =	${WRKDIST}/native
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/scripts/build/unix

DOCDIR =	${PREFIX}/share/doc/ap2-mod_jk
EXAMPLEDIR =	${PREFIX}/share/examples/ap2-mod_jk
EXAMPLES =	uriworkermap.properties workers.properties \
		httpd-jk.conf

do-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/apache2
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/../conf/${file} ${EXAMPLEDIR}/apache2/
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${DOCDIR}/
	${INSTALL_DATA} ${WRKDIST}/NOTICE ${DOCDIR}/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/apache2
	${INSTALL_PROGRAM} ${WRKSRC}/apache-2.0/mod_jk.so \
		${PREFIX}/lib/apache2/

.include <bsd.port.mk>
