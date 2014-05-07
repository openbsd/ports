# $OpenBSD: Makefile,v 1.10 2014/05/07 15:42:16 kurt Exp $

SHARED_ONLY=		Yes

COMMENT=		language/IDE for images, animations and interactions

V=			1.5.1
DISTNAME=		processing-$V-linux
PKGNAME=		${DISTNAME:S/-linux//}
REVISION=		5

CATEGORIES=		lang graphics

HOMEPAGE=		http://processing.org/

# IDE: GPL
# Core libraries: LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://processing.googlecode.com/files/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		devel/desktop-file-utils

MODULES=		java
MODJAVA_VER=		1.6+

WRKDIST= 		${WRKDIR}/${DISTNAME:S/-linux//}

NO_TEST=		Yes

PROCESSING_HOME=	${PREFIX}/share/processing/

# Trash > 125M of files we don't care about: the pre-compiled Java binaries
# and shared libraries for Linux. And adjust the wrapper script.
do-build:
	rm -fr ${WRKSRC}/java/ \
		${WRKSRC}/modes/java/libraries/serial/ \
		${WRKSRC}/lib/preferences.txt.orig
	${SUBST_CMD} ${WRKSRC}/processing

do-install:
	${INSTALL_DATA_DIR} ${PROCESSING_HOME}
	cd ${WRKSRC}; tar cf - * | tar xf - -C ${PROCESSING_HOME}
	ln -s ${JAVA_HOME} ${PROCESSING_HOME}/java
	rm -f ${PROCESSING_HOME}/processing.{beforesubst,orig}
	mv ${PROCESSING_HOME}/processing ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/processing.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${FILESDIR}/processing-48.xpm ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
