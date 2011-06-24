# $OpenBSD: Makefile,v 1.1.1.1 2011/06/24 07:00:16 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		language and IDE for electronic arts and designers

V=			1.5.1
DISTNAME=		processing-$V-linux
PKGNAME=		${DISTNAME:S/-linux//}

CATEGORIES=		lang graphics java

HOMEPAGE=		http://processing.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# IDE: GPL
# Core libraries: LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://processing.googlecode.com/files/
EXTRACT_SUFX=		.tgz

MODULES=		java
MODJAVA_VER=		1.6+

WRKDIST= 		${WRKDIR}/${DISTNAME:S/-linux//}

NO_REGRESS=		Yes

PROCESSING_HOME=	${PREFIX}/share/processing/

# Thrash > 125M of files we don't care about: the pre-compiled Java binaries
# for Linux. And adjust the wrapper script.
do-build:
	rm -fr ${WRKSRC}/java/ ${WRKSRC}/lib/preferences.txt.orig
	${SUBST_CMD} ${WRKSRC}/processing

do-install:
	${INSTALL_DATA_DIR} ${PROCESSING_HOME}
	cd ${WRKSRC}; tar cf - * | tar xf - -C ${PROCESSING_HOME}
	ln -s ${JAVA_HOME} ${PROCESSING_HOME}/java
	rm -f ${PROCESSING_HOME}/processing.{beforesubst,orig}
	mv ${PROCESSING_HOME}/processing ${PREFIX}/bin

.include <bsd.port.mk>
