# $OpenBSD: Makefile,v 1.4 2014/05/07 15:42:16 kurt Exp $

COMMENT=	BCrypt library for Java

DISTNAME=	jBCrypt-0.3
REVISION=	1

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
