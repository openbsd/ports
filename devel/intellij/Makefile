# $OpenBSD: Makefile,v 1.74 2020/12/05 11:19:30 rsadowski Exp $

COMMENT=		IntelliJ IDEA Java IDE

V=			2020.3
DISTNAME=		ideaIC-${V}
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

IJ=			${PREFIX}/intellij

EXTRACT_ONLY=

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	tar xzf ${DISTDIR}/${DISTFILES} -C ${PREFIX}
	mv ${PREFIX}/idea-IC-* ${IJ}
	@rm -rf ${IJ}/bin/libdbm64.so
	@rm -rf ${IJ}/jbr
	@rm -rf ${IJ}/plugins/android
	@${SUBST_PROGRAM} ${FILESDIR}/idea ${PREFIX}/bin/idea
	@${SUBST_PROGRAM} ${FILESDIR}/idea-lightedit \
		${PREFIX}/bin/idea-lightedit
	@ln -s ${TRUEPREFIX}/bin/idea ${PREFIX}/bin/intellij
	@ln -s ${TRUEPREFIX}/bin/idea-lightedit \
		${PREFIX}/bin/intellij-lightedit
	${INSTALL_MAN} ${FILESDIR}/idea.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_DATA} ${FILESDIR}/intellij.desktop \
		${PREFIX}/share/applications/intellij.desktop
	@${SUBST_DATA} ${FILESDIR}/intellij-lightedit.desktop \
		${PREFIX}/share/applications/intellij-lightedit.desktop

.include <bsd.port.mk>
