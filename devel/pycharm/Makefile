# $OpenBSD: Makefile,v 1.34 2020/12/05 11:23:04 rsadowski Exp $

COMMENT=		Python IDE based on IntelliJ IDEA

V=			2020.3
DISTNAME=		pycharm-community-${V}
PKGNAME=		pycharm-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/pycharm/

MAINTAINER =		Lucas Raab <tuftedocelot@fastmail.fm>

# Apache v2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://download.jetbrains.com/python/

MODULES=		java
MODJAVA_VER=		11

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			java/javaPathHelper

NO_TEST=		Yes

PC=			${PREFIX}/pycharm

EXTRACT_ONLY=

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	tar xzf ${DISTDIR}/${DISTFILES} -C ${PREFIX}
	mv ${PREFIX}/${DISTNAME} ${PC}
	@rm -rf ${PC}/jbr
	@rm -rf ${PC}/plugins/android
	@rm -rf ${PC}/lib/pty4j-native
	@${SUBST_PROGRAM} ${FILESDIR}/pycharm ${PREFIX}/bin/pycharm
	@${SUBST_PROGRAM} ${FILESDIR}/pycharm-lightedit \
		${PREFIX}/bin/pycharm-lightedit
	@chmod ${BINMODE} ${PREFIX}/bin/pycharm
	@chmod ${BINMODE} ${PREFIX}/bin/pycharm-lightedit
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_DATA} ${FILESDIR}/pycharm.desktop \
		${PREFIX}/share/applications/pycharm.desktop
	@${SUBST_DATA} ${FILESDIR}/pycharm-lightedit.desktop \
		${PREFIX}/share/applications/pycharm-lightedit.desktop
	${INSTALL_MAN} ${FILESDIR}/pycharm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
