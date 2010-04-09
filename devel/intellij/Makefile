# $OpenBSD: Makefile,v 1.1.1.1 2010/04/09 22:23:26 ian Exp $

SHARED_ONLY=		Yes

COMMENT=		IntelliJ Java IDE

V=			9.0.1
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

RUN_DEPENDS=		::java/javaPathHelper

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/idea-IC-93.94
IJ=			${PREFIX}/intellij

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
	cd ${WRKDIST}/lib && ${LOCALBASE}/jdk-1.6.0/bin/jar xvf icons.jar
	cp ${WRKDIST}/lib/icon.png ${IJ}/idea.png
	@${SUBST_CMD} -c ${FILESDIR}/intellij.desktop \
		${PREFIX}/share/applications/intellij.desktop
	@chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/applications/intellij.desktop

.include <bsd.port.mk>
