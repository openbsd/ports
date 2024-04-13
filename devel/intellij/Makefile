COMMENT=		IntelliJ IDEA Java IDE

V=			2024.1
DISTNAME=		ideaIC-${V}
PKGNAME=		intellij-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/idea/
MAINTAINER=		Lucas Raab <tuftedocelot@fastmail.fm>

# Apache v2.0
PERMIT_PACKAGE=	Yes

SITES=			https://download.jetbrains.com/idea/

MODULES=		java
MODJAVA_VER=		17

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			java/javaPathHelper

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/idea-IC-241.14494.240
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
