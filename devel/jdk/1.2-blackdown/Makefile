# $OpenBSD: Makefile,v 1.1 2001/05/08 00:54:39 matt Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Blackdown Java Development Kit for Java 2 platform"

DISTNAME=	jdk-blackdown-1.2pre2
CATEGORIES=	devel
NEED_VERSION=	1.407

HOMEPAGE=	http://www.blackdown.org/
MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

MASTER_SITES=	ftp://metalab.unc.edu/pub/linux/devel/lang/java/blackdown.org/JDK-1.2/i386/pre-v2/glibc2.0/
DISTFILES=	jdk1.2pre-v2.tar.bz2

RUN_DEPENDS=	${LOCALBASE}/emul/redhat/usr/X11R6/lib/libXp.so.6:redhat_base->=6.2:emulators/redhat_base

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/jdk1.2
JDK_HOME=	${PREFIX}/jdk1.2-blackdown

# Fix permissions in the tarball
post-extract:
	@chmod o+r ${WRKSRC}/jre/lib/i386/libsunwjit.so
	@chmod o+r ${WRKSRC}/jre/lib/fonts/*.ttf

pre-install:
	@${INSTALL_DATA_DIR} ${JDK_HOME}

do-install:
	@cp -Rf ${WRKSRC}/* ${JDK_HOME}

.include <bsd.port.mk>

