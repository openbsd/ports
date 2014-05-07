# $OpenBSD: Makefile,v 1.18 2014/05/07 15:42:15 kurt Exp $

SHARED_ONLY=		Yes

COMMENT=		IntelliJ Java IDE

V=			9.0.4
DISTNAME=		ideaIC-${V}
PKGNAME=		intellij-${V}
CATEGORIES=		devel

REVISION=		4

HOMEPAGE=		http://www.jetbrains.com/idea/

# Apache v2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.jetbrains.com/idea/

MODULES=		java
MODJAVA_VER=		1.7

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils

NO_TEST=		Yes

SUBST_VARS+=		JAVA_HOME

WRKDIST=		${WRKDIR}/idea-IC-95.627
IJ=			${PREFIX}/intellij

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${IJ}
	@tar -czf - -C ${WRKDIST} . | tar xzf - -C ${IJ}
	@${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c \
		${FILESDIR}/idea \
		${PREFIX}/bin/idea
	@chmod ${BINMODE} ${PREFIX}/bin/idea
	@ln -s ${TRUEPREFIX}/bin/idea ${PREFIX}/bin/intellij
	${INSTALL_MAN} ${FILESDIR}/idea.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	cd ${WRKDIST}/lib && ${JAVA_HOME}/bin/jar xf icons.jar
	${INSTALL_DATA} ${WRKDIST}/lib/icon.png ${IJ}/idea.png
	@${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c \
		${FILESDIR}/intellij.desktop \
		${PREFIX}/share/applications/intellij.desktop
	@chmod ${SHAREMODE} \
		${PREFIX}/share/applications/intellij.desktop

.include <bsd.port.mk>
