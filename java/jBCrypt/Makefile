# $OpenBSD: Makefile,v 1.5 2015/02/06 14:11:46 sthen Exp $

COMMENT=	BCrypt library for Java

DISTNAME=	jBCrypt-0.4

CATEGORIES=	security

HOMEPAGE=	http://www.mindrot.org/projects/jBCrypt/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.mindrot.org/files/jBCrypt/

MODULES=		java
MODJAVA_VER=		1.6+
MODJAVA_JRERUN=		yes
MODJAVA_BUILD=		ant

# JUnit tests exist but unsure how to handle non-ascii chars
NO_TEST=		Yes

do-configure:
	cp ${FILESDIR}/build.xml ${WRKSRC}/

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/BCrypt
	${INSTALL_DATA} ${WRKSRC}/build/lib/BCrypt.jar ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${MODJAVA_DOC_DIR}/BCrypt

.include <bsd.port.mk>
