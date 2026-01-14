COMMENT=		IntelliJ IDEA Java IDE

V=			2025.3.1.1
DIST_VER=		253.29346.240
DISTNAME=		idea-${V}
PKGNAME=		intellij-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/idea/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# Apache v2.0
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/JetBrains/intellij-community/releases/download/idea%2F${V}/

MODULES=		java
MODJAVA_VER=		21+

RUN_DEPENDS+=		devel/desktop-file-utils \
			java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes

SUBST_VARS+=		DIST_VER

WRKDIST=		${WRKDIR}/idea-IC-${DIST_VER}
IJ=			${PREFIX}/intellij

do-install:
	${INSTALL_DATA_DIR} ${IJ}
	@cd ${WRKDIST} && pax -rw . ${IJ}
	@rm -rf ${IJ}/jbr
	find ${IJ}/lib ${IJ}/plugins -name '*.so' -delete
	find ${IJ}/lib ${IJ}/plugins -name '*.dll' -delete
	find ${IJ}/lib ${IJ}/plugins -name '*.pdb' -delete
	find ${IJ}/lib ${IJ}/plugins -name '*.exe' -delete
	find ${IJ}/lib ${IJ}/plugins -type d -empty -delete

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
