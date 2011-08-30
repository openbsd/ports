# $OpenBSD: Makefile,v 1.1.1.1 2011/08/30 08:53:58 jasper Exp $

COMMENT=	Java template engine for generating source code, etc

V=		4.0.4
DISTNAME=	ST-$V
PKGNAME=	stringtemplate-$V
CATEGORIES=	textproc java

HOMEPAGE=	http://www.stringtemplate.org/

# BSD (StringTemplate License: http://www.stringtemplate.org/license.html)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE:=download/}

EXTRACT_SUFX=	.jar
EXTRACT_ONLY=	#

NO_BUILD=	Yes
NO_REGRESS=	Yes

MODULES=	java
MODJAVA_VER=	1.6+

JAR_DIR=	${PREFIX}/share/java/classes/

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${JAR_DIR}/stringtemplate.jar

.include <bsd.port.mk>
