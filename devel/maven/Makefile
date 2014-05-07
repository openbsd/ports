# $OpenBSD: Makefile,v 1.22 2014/05/07 15:42:15 kurt Exp $

COMMENT=	software project management and comprehension tool

V=		3.0.5
DISTNAME=	apache-maven-$V
PKGNAME=	${DISTNAME:S/apache-//}
CATEGORIES=	devel
REVISION=	1

HOMEPAGE=	http://maven.apache.org/

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=maven/maven-3/${V}/binaries/} \
		http://archive.apache.org/dist/maven/binaries/


EXTRACT_SUFX=	-bin.tar.gz

MODULES=	java
MODJAVA_VER=	1.6+
RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

MAVEN_HOME=	${LOCALBASE}/maven
SAMPLEDIR=	${PREFIX}/share/examples/maven

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/maven
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	cd ${WRKDIST} && \
		tar -cf - bin boot lib `find * -prune -type f` | \
		tar -C ${PREFIX}/maven -xf -
	find ${WRKINST} -name \*.orig -or -name \*.bat -or -name \*.exe | \
		xargs rm
	${INSTALL_DATA} ${WRKSRC}/conf/settings.xml ${SAMPLEDIR}/
	ln -s ${SYSCONFDIR}/maven ${PREFIX}/maven/conf
	@perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		${PREFIX}/maven/bin/mvn
	@sed -e 's,%%MAVEN_HOME%%,${MAVEN_HOME},' \
		< ${FILESDIR}/maven.rc \
		> ${SAMPLEDIR}/maven.rc
	@sed -e 's,%%LOCALBASE%%,${LOCALBASE},' \
		< ${FILESDIR}/mvn \
		> ${WRKSRC}/bin/mvn
	${INSTALL_SCRIPT} ${WRKSRC}/bin/mvn ${PREFIX}/bin/

.include <bsd.port.mk>
