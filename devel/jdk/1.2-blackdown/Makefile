# $OpenBSD: Makefile,v 1.10 2002/05/13 18:50:39 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Blackdown Java Development Kit for Java 2 platform"

DISTNAME=	jdk-blackdown-1.2pre2
CATEGORIES=	devel
NEED_VERSION=	1.499

HOMEPAGE=	http://www.blackdown.org/
MAINTAINER=	Matt Behrens <matt@openbsd.org>

# Sun Binary Code License
PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

V=		JDK-1.2/i386/pre-v2/glibc2.0
MASTER_SITES=	ftp://ftp.tux.org/pub/java/$V/ \
		ftp://ftp.mirror.ac.uk/sites/ftp.blackdown.org/java-linux/$V/ \
		ftp://ftp.gwdg.de/pub/languages/java/linux/$V/ \
		ftp://ftp.informatik.hu-berlin.de/pub/Java/Linux/$V/ \
		ftp://ftp.uk.linux.org/pub/linux/java/$V/
DISTFILES=	jdk1.2pre-v2.tar.bz2

BUILD_DEPENDS=	:redhat_base->=6.2:emulators/redhat/base
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes

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

