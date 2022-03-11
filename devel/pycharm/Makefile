COMMENT=		Python IDE based on IntelliJ IDEA

V=			2021.3.2
DISTNAME=		pycharm-community-${V}
PKGNAME=		pycharm-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/pycharm/
DISTFILES=		${DISTNAME}-no-jbr${EXTRACT_SUFX}

MAINTAINER =		Lucas Raab <tuftedocelot@fastmail.fm>

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
	@cd ${WRKDIST} && pax -rw . ${PC}
	@rm -rf ${PC}/plugins/android
	@rm -rf ${PC}/lib/pty4j-native
.for PLUGIN in darwin-x86-64 darwin-aarch64 win32-x86-64
	@rm -rf ${PC}/plugins/cwm-plugin/quiche-native/${PLUGIN}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
.for PROG in pycharm pycharm-lightedit
	@${SUBST_PROGRAM} ${FILESDIR}/${PROG} ${PREFIX}/bin/${PROG}
	@${SUBST_DATA} ${FILESDIR}/${PROG}.desktop \
		${PREFIX}/share/applications/${PROG}.desktop
.endfor
	${INSTALL_MAN} ${FILESDIR}/pycharm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
