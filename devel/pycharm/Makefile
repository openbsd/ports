COMMENT=		Python IDE based on IntelliJ IDEA

V=			2025.3.1.1
DISTNAME=		pycharm-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/pycharm/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# Apache v2.0
PERMIT_PACKAGE=	Yes

SITES=			https://github.com/JetBrains/intellij-community/releases/download/pycharm%2F${V}/

MODULES=		java
MODJAVA_VER=		21+

RUN_DEPENDS+=		devel/desktop-file-utils \
			java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/pycharm-community-${V}
PC=			${PREFIX}/pycharm

do-install:
	${INSTALL_DATA_DIR} ${PC}
	@cd ${WRKDIST} && pax -rw . ${PC}
	@rm -rf ${PC}/jbr
	find ${PC}/lib ${PC}/plugins -name '*.so' -delete
	find ${PC}/lib ${PC}/plugins -name '*.dll' -delete
	find ${PC}/lib ${PC}/plugins -name '*.pdb' -delete
	find ${PC}/lib ${PC}/plugins -name '*.exe' -delete
	find ${PC}/lib ${PC}/plugins -type d -empty -delete

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
