# $OpenBSD: Makefile,v 1.20 2011/12/15 21:33:19 kili Exp $

COMMENT=		Java interface to GeoIP database
DISTNAME=		jeoip-0.5
REVISION=		10
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
MODJAVA_BUILD=		ant
MODJAVA_BUILD_TARGET=	jar docs

BUILD_DEPENDS=		java/junit
REGRESS_DEPENDS=	net/GeoIP \
			java/junit
RUN_DEPENDS=		net/GeoIP\
 			java/javaPathHelper
MAKE_ENV=		CLASSPATH=${LOCALBASE}/share/java/classes/junit/junit.jar

WRKDIST=		${WRKDIR}/jeoip

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKDIST}/jeoip.jar ${MODJAVA_JAR_DIR}
	${INSTALL_SCRIPT} ${WRKDIST}/unix/jeoip ${PREFIX}/bin

do-regress:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ant regress

.include <bsd.port.mk>
