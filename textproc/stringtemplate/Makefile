# $OpenBSD: Makefile,v 1.8 2017/04/21 13:27:47 kurt Exp $

COMMENT=	Java template engine for generating source code, etc

V=		4.0.4
DISTNAME=	ST-$V
REVISION=	2
PKGNAME=	stringtemplate-$V
CATEGORIES=	textproc java

HOMEPAGE=	http://www.stringtemplate.org/

# BSD (StringTemplate License: http://www.stringtemplate.org/license.html)
PERMIT_PACKAGE_CDROM=	Yes

# upstream keeps re-rolling the distfile
MASTER_SITES=	https://distfiles.nl/

EXTRACT_SUFX=	.jar
EXTRACT_ONLY=	#

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	java
MODJAVA_VER=	1.6+

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${MODJAVA_JAR_DIR}/stringtemplate.jar

.include <bsd.port.mk>
