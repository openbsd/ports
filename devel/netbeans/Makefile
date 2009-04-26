# $OpenBSD: Makefile,v 1.11 2009/04/26 09:38:25 sthen Exp $

COMMENT=		NetBeans Java IDE

DISTNAME=		netbeans-5_5-ide_sources
PKGNAME=		netbeans-5.5p5
CATEGORIES=		devel

HOMEPAGE=		http://www.netbeans.org/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# CDDL
PERMIT_PACKAGE_CDROM=	CDDL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	CDDL
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://us2-mirror.netbeans.info/download/5_5/mlfcs/200612070100/
EXTRACT_SUFX=		.zip

VMEM_WARNING=		Yes

MODULES=		java
MODJAVA_VER=		1.5+

USE_ZIP=		Yes

BUILD_DEPENDS=		:apache-ant->=1.7.0:devel/apache-ant

RUN_DEPENDS=		::java/javaPathHelper

MAKE_ENV=		JAVA_HOME=${JAVA_HOME} \
			ANT_HOME=${LOCALBASE}/ant

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/netbeans-src

do-build:
		@cd ${WRKDIST}/nbbuild && exec ${SETENV} ${MAKE_ENV} ant -q \
		-Dant.build.javac.source="1.5" -Dant.build.javac.target="1.5"

do-install:
		@rm -f ${WRKDIST}/nbbuild/netbeans/bin/*.{cmd,exe}
		@tar -czf - -C ${WRKDIST}/nbbuild netbeans | tar xzf - -C ${PREFIX}
		@sed -e "s+%%NETBEANS_HOME%%+${TRUEPREFIX}/netbeans+g" \
			${WRKBUILD}/netbeans.in > ${WRKBUILD}/netbeans.tmp
		${INSTALL_SCRIPT} ${WRKBUILD}/netbeans.tmp ${PREFIX}/bin/netbeans 

.include <bsd.port.mk>
