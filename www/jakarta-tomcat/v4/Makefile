# $OpenBSD: Makefile,v 1.4 2002/03/29 11:10:54 reinhard Exp $

COMMENT=	"Java servlet 2.3 and Java server pages 1.2 server"

# Requires a JVM
ONLY_FOR_ARCHS=	i386

V=		4.0.2
DISTNAME=	jakarta-tomcat-${V}
CATEGORIES=	www
NEED_VERSION=	1.516
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat-4.0/release/v${V}/bin/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

JDK_VERSION=	1.3-linux
JAVA_HOME=	${LOCALBASE}/jdk${JDK_VERSION}
RUN_DEPENDS=	:jdk-linux->1.3:devel/jdk/${JDK_VERSION}

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

CONF_FILES=catalina.policy server-noexamples.xml.config server.xml \
tomcat-users.xml web.xml
CONFDIR=	/etc/tomcat
DIRS=		bin classes common conf lib server webapps
DOCS=LICENSE RELEASE-NOTES-4.0-B1.txt RELEASE-NOTES-4.0-B2.txt \
RELEASE-NOTES-4.0-B3.txt RELEASE-NOTES-4.0-B4.txt RELEASE-NOTES-4.0-B5.txt \
RELEASE-NOTES-4.0-B6.txt RELEASE-NOTES-4.0-B7.txt RELEASE-NOTES-4.0-RC1.txt \
RELEASE-NOTES-4.0-RC2.txt RELEASE-NOTES-4.0.1-B1.txt RELEASE-NOTES-4.0.1.txt \
RELEASE-NOTES-4.0.txt RELEASE-PLAN-4.0.1.txt RELEASE-PLAN-4.0.txt RUNNING.txt
TOMCATDIR=	/var/tomcat
SUBST_VARS=	TOMCATDIR CONFDIR DISTNAME

post-patch:
	@cd ${WRKDIST}/conf && perl -pi -e 's,,,g' ${CONF_FILES}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/${DISTNAME}
	@cd ${WRKDIST} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/${DISTNAME}
	@cd ${WRKDIST}/bin && chmod +x *.sh	# for .zip file
	@cd ${WRKDIST} && \
		tar cf - ${DIRS} | (cd ${PREFIX}/${DISTNAME} && tar -xf -)
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/${DISTNAME}/conf

.include "bsd.port.mk"
