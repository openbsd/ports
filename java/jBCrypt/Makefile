COMMENT=	BCrypt library for Java

DISTNAME=	jBCrypt-0.4
REVISION=	5

CATEGORIES=	security

HOMEPAGE=	https://www.mindrot.org/projects/jBCrypt/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# ISC
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://www.mindrot.org/files/jBCrypt/

MODULES=		java
MODJAVA_VER=		1.8+
MODJAVA_BUILD=		ant

# JUnit tests exist but unsure how to handle non-ascii chars (or run them in
# the first place..)
NO_TEST=		Yes

do-configure:
	cp ${FILESDIR}/build.xml ${WRKSRC}/

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/BCrypt
	${INSTALL_DATA} ${WRKSRC}/build/lib/BCrypt.jar ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${MODJAVA_DOC_DIR}/BCrypt

.include <bsd.port.mk>
