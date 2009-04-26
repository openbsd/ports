# $OpenBSD: Makefile,v 1.7 2009/04/26 09:38:25 sthen Exp $

COMMENT=		Java interface to GeoIP database
DISTNAME=		jeoip-0.5
PKGNAME=		${DISTNAME}p4
CATEGORIES=		geo net
PKG_ARCH=		*

HOMEPAGE=		http://www.darwinsys.com/freeware/jeoip.jsp

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.darwinsys.com/freeware/

MODULES=		java
MODJAVA_VER=		1.5+
MODJAVA_JRERUN=		Yes
BUILD_DEPENDS=		:apache-ant->=1.6.1:devel/apache-ant:\
			:junit-3.8.2:java/junit
REGRESS_DEPENDS=	::net/GeoIP
RUN_DEPENDS=		::net/GeoIP\
 			:javaPathHelper-*:java/javaPathHelper
MAKE_ENV=		JAVA_HOME=${JAVA_HOME} \
			CLASSPATH=${LOCALBASE}/share/java/classes/junit-3.8.2/junit.jar

WRKDIST=		${WRKDIR}/jeoip

INSTALLDIR=		jeoip

do-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ant jar docs

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/${INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/jeoip.jar ${PREFIX}/share/java/${INSTALLDIR}
	${INSTALL_SCRIPT} ${WRKDIST}/unix/jeoip ${PREFIX}/bin

do-regress:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ant regress

.include <bsd.port.mk>
