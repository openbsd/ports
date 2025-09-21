COMMENT=		IntelliJ IDEA Java IDE

V=			2025.2.2
DIST_VER=		252.26199.169
DISTNAME=		ideaIC-${V}
PKGNAME=		intellij-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/idea/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# Apache v2.0
PERMIT_PACKAGE=		Yes

SITES=			https://download.jetbrains.com/idea/

MODULES=		java
MODJAVA_VER=		21

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			java/javaPathHelper

NO_TEST=		Yes

SUBST_VARS+=		DIST_VER

WRKDIST=		${WRKDIR}/idea-IC-${DIST_VER}
IJ=			${PREFIX}/intellij

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${IJ}
	@cd ${WRKDIST} && pax -rw . ${IJ}
	@rm -rf ${IJ}/jbr
	find ${IJ}/lib ${IJ}/plugins -name '*.so' -delete
	find ${IJ}/lib ${IJ}/plugins -name '*.dll' -delete
	find ${IJ}/lib ${IJ}/plugins -name '*.pdb' -delete
	find ${IJ}/lib ${IJ}/plugins -name '*.exe' -delete
	find ${IJ}/lib ${IJ}/plugins -type d -empty -delete

	@rm ${IJ}/plugins/fullLine/full-line-native-server-linux-x86_64.zip
.for PLUGIN in aarch64-unknown-linux x86_64-unknown-linux
	@rm -rf ${IJ}/plugins/platform-ijent-impl/ijent-${PLUGIN}-musl-release
.endfor
.for PLUGIN in darwin-x86-64 darwin-aarch64 win32-x86-64
	@rm -rf ${IJ}/plugins/cwm-plugin/quiche-native/${PLUGIN}
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
