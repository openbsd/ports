# $OpenBSD: Makefile,v 1.3 2010/04/30 19:02:17 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		IntelliJ Java IDE

V=			9.0.2
DISTNAME=		ideaIC-${V}
PKGNAME=		intellij-${V}
CATEGORIES=		java devel

HOMEPAGE=		http://www.jetbrains.com/idea/

MAINTAINER=		Daniel Dickman <didickman@gmail.com>

# Apache v2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.jetbrains.com/idea/

MODULES=		java
MODJAVA_VER=		1.6

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

NO_REGRESS=		Yes
SUBST_VARS+=		JAVA_HOME

WRKDIST=		${WRKDIR}/idea-IC-95.66
IJ=			${PREFIX}/intellij

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${IJ}
	@tar -czf - -C ${WRKDIST} . | tar xzf - -C ${IJ}
	@${SUBST_CMD} -c ${FILESDIR}/idea \
		${PREFIX}/bin/idea
	@chmod ${BINMODE} ${PREFIX}/bin/idea
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/idea
	@ln -s ${TRUEPREFIX}/bin/idea ${PREFIX}/bin/intellij
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${IJ}
	${INSTALL_MAN} ${FILESDIR}/idea.1 ${PREFIX}/man/man1
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	cd ${WRKDIST}/lib && ${JAVA_HOME}/bin/jar xf icons.jar
	cp ${WRKDIST}/lib/icon.png ${IJ}/idea.png
	@${SUBST_CMD} -c ${FILESDIR}/intellij.desktop \
		${PREFIX}/share/applications/intellij.desktop
	@chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/applications/intellij.desktop

.include <bsd.port.mk>
