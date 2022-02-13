# $OpenBSD: Makefile,v 1.81 2022/02/13 07:46:38 rsadowski Exp $

COMMENT=		IntelliJ IDEA Java IDE

V=			2021.3.2
DISTNAME=		ideaIC-${V}-no-jbr
PKGNAME=		intellij-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/idea/
MAINTAINER=		Lucas Raab <tuftedocelot@fastmail.fm>

# Apache v2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://download.jetbrains.com/idea/

MODULES=		java
MODJAVA_VER=		11

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			java/javaPathHelper

NO_TEST=		Yes

WRKDIST=	${WRKDIR}/idea-IC-213.6777.52
IJ=			${PREFIX}/intellij

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${IJ}
	@cd ${WRKDIST} && pax -rw . ${IJ}
	@rm -rf ${IJ}/bin/libdbm64.so
	@rm -rf ${IJ}/plugins/android
.for PLUGIN in darwin-x86-64 darwin-aarch64 win32-x86-64
	@rm -rf ${IJ}/plugins/cwm-plugin/quiche-native/${PLUGIN}
.endfor
.for PLUGIN in windows32 windows64 osx
	@rm -rf ${IJ}/plugins/maven/lib/maven3/lib/jansi-native/${PLUGIN}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
.for PROG in idea idea-lightedit
	@${SUBST_PROGRAM} ${FILESDIR}/${PROG} ${PREFIX}/bin/${PROG}
.endfor
.for PROG in intellij intellij-lightedit
	@${SUBST_DATA} ${FILESDIR}/${PROG}.desktop \
		${PREFIX}/share/applications/${PROG}.desktop
.endfor
	@ln -s ${TRUEPREFIX}/bin/idea ${PREFIX}/bin/intellij
	@ln -s ${TRUEPREFIX}/bin/idea-lightedit \
		${PREFIX}/bin/intellij-lightedit
	${INSTALL_MAN} ${FILESDIR}/idea.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
