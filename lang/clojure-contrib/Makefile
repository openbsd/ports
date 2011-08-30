# $OpenBSD: Makefile,v 1.1.1.1 2011/08/30 19:02:24 jasper Exp $

COMMENT=	contributed libraries for the Clojure programming language

DISTNAME=	clojure-contrib-1.1.0
CATEGORIES=	lang

HOMEPAGE=	http://clojure-contrib.googlecode.com/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Eclipse Public License EPL 1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/
EXTRACT_SUFX=	.zip

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_JRERUN= Yes

BUILD_DEPENDS=	devel/apache-ant \
		${RUN_DEPENDS}
RUN_DEPENDS=	lang/clojure

NO_REGRESS=	Yes

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ant \
		-Dclojure.jar=${LOCALBASE}/clojure/clojure.jar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/{classes/,clojure-contrib/}
	${INSTALL_DATA} ${WRKSRC}/clojure-contrib.jar \
		${PREFIX}/share/java/classes/
	cp -R ${WRKSRC}/doc/ ${PREFIX}/share/java/clojure-contrib/

.include <bsd.port.mk>
