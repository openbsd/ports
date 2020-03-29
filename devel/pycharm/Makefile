# $OpenBSD: Makefile,v 1.25 2020/03/29 07:52:02 rsadowski Exp $

COMMENT=		Python IDE based on IntelliJ IDEA

V=			2019.3.4
DISTNAME=		pycharm-community-${V}
PKGNAME=		pycharm-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/pycharm/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# Apache v2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://download.jetbrains.com/python/

MODULES=		java
MODJAVA_VER=		11

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			java/javaPathHelper

NO_TEST=		Yes

PC=			${PREFIX}/pycharm

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${PC}
	@tar -czf - -C ${WRKDIST} . | tar xzf - -C ${PC}
	@rm -rf ${PC}/jbr
	@rm -rf ${PC}/plugins/android
	@rm -rf ${PC}/lib/pty4j-native
	@${SUBST_PROGRAM} ${FILESDIR}/pycharm ${PREFIX}/bin/pycharm
	@chmod ${BINMODE} ${PREFIX}/bin/pycharm
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	cd ${WRKDIST}/lib && ${JAVA_HOME}/bin/jar xf icons.jar
	${INSTALL_DATA} ${WRKDIST}/lib/icon.png ${PC}/pycharm.png
	@${SUBST_DATA} ${FILESDIR}/pycharm.desktop \
		${PREFIX}/share/applications/pycharm.desktop
	${INSTALL_MAN} ${FILESDIR}/pycharm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
