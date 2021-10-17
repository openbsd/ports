# $OpenBSD: Makefile,v 1.78 2021/10/17 13:06:59 kn Exp $

COMMENT=		IntelliJ IDEA Java IDE

V=			2021.2.3
REVISION=		0
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

WRKDIST=	${WRKDIR}/idea-IC-212.5457.46
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
