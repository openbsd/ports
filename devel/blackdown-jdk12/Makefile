# $OpenBSD: Makefile,v 1.2 2001/03/25 19:17:45 matt Exp $

COMMENT=	"Blackdown's JDK for Java 2"

DISTNAME=	blackdown-jdk-1.2pre-v2
CATEGORIES=	devel
NEED_VERSION=	1.361
MASTER_SITES=	ftp://metalab.unc.edu/pub/linux/devel/lang/java/blackdown.org/JDK-1.2/i386/pre-v2/glibc2.0/

JDK_VERSION=	1.2
JDK_PATH=	${PREFIX}/blackdown-jdk${JDK_VERSION}

HOMEPAGE=	http://www.blackdown.org/

MAINTAINER=	openbsd-java@codemonkey.net

RUN_DEPENDS=	${LOCALBASE}/emul/redhat/usr/X11R6/lib/libXp.so.6::emulators/redhat_base

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

ONLY_FOR_ARCHS=	i386

NO_BUILD=	Yes
DISTFILES=	jdk1.2pre-v2.tar.bz2
WRKDIST= 	${WRKDIR}/jdk${JDK_VERSION}

# Fix permissions in the tarball
post-extract:
	@chmod o+r ${WRKSRC}/jre/lib/i386/libsunwjit.so
	@chmod o+r ${WRKSRC}/jre/lib/fonts/*.ttf

do-install:
	@${INSTALL_DATA_DIR} ${JDK_PATH}
	@cp -Rf ${WRKSRC}/* ${JDK_PATH}

.include <bsd.port.mk>

