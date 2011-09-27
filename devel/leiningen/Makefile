# $OpenBSD: Makefile,v 1.2 2011/09/27 09:16:41 jasper Exp $

COMMENT=	tool for building of code, written in Clojure

# Full tarball with the script and the leiningen jar taken from github
V=		1.6.1.1
DISTNAME=	leiningen-$V
REVISION=	0

CATEGORIES=	devel java

HOMEPAGE=	https://github.com/technomancy/leiningen

# EPLv1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

MODULES=	java
MODJAVA_VER=	1.6+

RUN_DEPENDS=	devel/apache-ant \
		lang/clojure \
		java/asm \
		java/javaPathHelper \
		shells/bash

SUBST_VARS+=	MODJAVA_JAR_DIR

do-configure:
	${SUBST_CMD} ${WRKSRC}/lein

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/lein ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}/lein/

.include <bsd.port.mk>
