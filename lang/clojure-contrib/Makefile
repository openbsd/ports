# $OpenBSD: Makefile,v 1.2 2011/08/31 13:10:29 jasper Exp $

COMMENT=	contributed libraries for the Clojure programming language

V=		1.2.0
DISTNAME=	clojure-contrib-$V
CATEGORIES=	lang

HOMEPAGE=	https://github.com/richhickey/clojure-contrib

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Eclipse Public License EPL 1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

# from http://clojure.org/downloads
MASTER_SITES=	http://distfiles.nl/
EXTRACT_SUFX=	.zip

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_JRERUN= Yes

RUN_DEPENDS=	lang/clojure

NO_BUILD=	Yes
NO_REGRESS=	Yes

# Newer version >= 1.2.0 require maven to build, which appears to have
# hickups still. So for now use the pre-compiled jar.
do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ant \
		-Dclojure.jar=${LOCALBASE}/clojure/clojure.jar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/
	${INSTALL_DATA} ${WRKSRC}/target/clojure-contrib-$V.jar \
		${PREFIX}/share/java/classes/clojure-contrib.jar

.include <bsd.port.mk>
