# $OpenBSD: Makefile,v 1.1.1.1 2012/05/23 15:02:52 sthen Exp $

COMMENT=	BCrypt library for Java

DISTNAME=	jBCrypt-0.3

CATEGORIES=	security

HOMEPAGE=	http://www.mindrot.org/projects/jBCrypt/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.mindrot.org/files/jBCrypt/

MODULES=		java
MODJAVA_VER=		1.5+
MODJAVA_JRERUN=		yes
MODJAVA_BUILD=		ant

# JUnit tests exist but unsure how to handle non-ascii chars
NO_REGRESS=		Yes

do-configure:
	cp ${FILESDIR}/build.xml ${WRKSRC}/

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/BCrypt
	${INSTALL_DATA} ${WRKSRC}/build/lib/BCrypt.jar ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${MODJAVA_DOC_DIR}/BCrypt

.include <bsd.port.mk>
