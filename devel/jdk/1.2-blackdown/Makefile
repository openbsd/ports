# $OpenBSD: Makefile,v 1.6 2001/11/10 15:00:47 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Blackdown Java Development Kit for Java 2 platform"

DISTNAME=	jdk-blackdown-1.2pre2
CATEGORIES=	devel
NEED_VERSION=	1.489

HOMEPAGE=	http://www.blackdown.org/
MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

MASTER_SITES=	ftp://metalab.unc.edu/pub/linux/devel/lang/java/blackdown.org/JDK-1.2/i386/pre-v2/glibc2.0/
DISTFILES=	jdk1.2pre-v2.tar.bz2

BUILD_DEPENDS=	:redhat_base->=6.2:emulators/redhat/base
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/jdk1.2
JDK_HOME=	${PREFIX}/jdk1.2-blackdown

# Fix permissions in the tarball
post-extract:
	@chmod o+r ${WRKSRC}/jre/lib/i386/libsunwjit.so
	@chmod o+r ${WRKSRC}/jre/lib/fonts/*.ttf

# Add OpenBSD resource bundle for javah
post-patch:
	@mkdir -p ${WRKSRC}/lib/com/sun/tools/javah/resources
	@cp ${FILESDIR}/OpenBSD_i386.properties \
	    ${WRKSRC}/lib/com/sun/tools/javah/resources/
	@${WRKSRC}/bin/jar -0uvf ${WRKSRC}/lib/tools.jar -C ${WRKSRC}/lib \
	    com/sun/tools/javah/resources/OpenBSD_i386.properties

pre-install:
	@${INSTALL_DATA_DIR} ${JDK_HOME}

do-install:
	@cp -Rf ${WRKSRC}/* ${JDK_HOME}

.include <bsd.port.mk>

