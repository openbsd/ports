# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:15 sthen Exp $

COMMENT=	Java template engine for generating source code, etc

V=		4.0.4
DISTNAME=	ST-$V
REVISION=	4
PKGNAME=	stringtemplate-$V
CATEGORIES=	textproc java

HOMEPAGE=	http://www.stringtemplate.org/

# BSD (StringTemplate License: http://www.stringtemplate.org/license.html)
PERMIT_PACKAGE=	Yes

# upstream keeps re-rolling the distfile
MASTER_SITES=	https://distfiles.nl/

EXTRACT_SUFX=	.jar
EXTRACT_ONLY=	#

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	java
MODJAVA_VER=	1.8+

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${MODJAVA_JAR_DIR}/stringtemplate.jar

.include <bsd.port.mk>
