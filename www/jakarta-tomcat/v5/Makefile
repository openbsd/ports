# $OpenBSD: Makefile,v 1.1.1.1 2004/11/04 21:46:04 naddy Exp $

COMMENT=	"Java servlet 2.4 and Java server pages 2.0 server"

# Requires a JVM
ONLY_FOR_ARCHS=	i386

V=		5.0.28
DISTNAME=	jakarta-tomcat-${V}
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_APACHE:=jakarta/tomcat-5/v$V/bin/} \
		http://archive.apache.org/dist/jakarta/tomcat-5/archive/v${V}/bin/

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Kurt Miller <truk@apache.org>

BUILD_DEPENDS=	::archivers/gtar

JAVA_HOME=	${LOCALBASE}/jdk1.3.1-linux
RUN_DEPENDS=	:jdk*->=1.3:devel/jdk/1.3-linux

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

TAR=		${LOCALBASE}/bin/gtar

NO_BUILD=	Yes
NO_REGRESS=	Yes

CONFDIR=	${SYSCONFDIR}/tomcat
CATALINA_BASE=	/var/tomcat
SAMPLEDIR=	${PREFIX}/share/examples/tomcat
SUBST_VARS+=	PKGNAME CONFDIR CATALINA_BASE SAMPLEDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${PKGNAME}
	cd ${WRKDIST} && \
		tar cf - bin common server `find * -prune -type f` | \
		tar -C ${PREFIX}/${PKGNAME} -xf -
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	cd ${WRKDIST} && \
		tar cf - conf webapps | \
		tar -C ${SAMPLEDIR} -xf -
	find ${WRKINST} -name *.orig -or -name *.bat -or -name *.exe | \
		xargs rm
	@perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		${PREFIX}/${PKGNAME}/bin/setclasspath.sh
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%PKGNAME%%,${PKGNAME},' \
		-e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/${PKGNAME}/README.OpenBSD
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%PKGNAME%%,${PKGNAME},' \
		-e 's,%%JAVA_HOME%%,${JAVA_HOME},' \
		< ${FILESDIR}/tomcat.rc > ${SAMPLEDIR}/conf/tomcat.rc

.include "bsd.port.mk"
