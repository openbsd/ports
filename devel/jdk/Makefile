# $OpenBSD: Makefile,v 1.2 2000/03/30 06:51:29 chris Exp $
#
# See http://www.freebsd.org/java/ for software updates, etc.

DISTNAME=	jdk-${JDK_VERSION}
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.sc.sri.com/pub/FreeBSD/JDK/ \
		http://www.freebsd.org/java/

JDK_VERSION=	1.1.8
JDK_PATH=	${PREFIX}/jdk${JDK_VERSION}

MAINTAINER=	chris@OpenBSD.org

RUN_DEPENDS=	/emul/freebsd/usr/lib/libc.so.3.1:emulators/freebsd_lib

LICENSE_TYPE=		NOFEE
PERMIT_PACKAGE_CDROM=	NO
PERMIT_PACKAGE_FTP=	NO
PERMIT_DISTFILES_CDROM=	NO
PERMIT_DISTFILES_FTP=	NO

ONLY_FOR_ARCHS=	i386

NO_BUILD=	yes
NO_CONFIGURE=	yes
NO_MTREE=	yes
NO_PATCH=	yes
NO_PACKAGE=	yes
EXTRACT_ONLY=

DISTFILES=	jdk${JDK_VERSION}_AOUT.V1999-11-9.tar.gz

pre-install:
	@${INSTALL_DATA_DIR} ${JDK_PATH}

do-install:
.for JDKFILE in ${DISTFILES}
	@tar -C ${PREFIX} -xzf ${DISTDIR}/${JDKFILE}
.endfor
#
# For loop not needed currently.  However, not having it would be incorrect,
# as additional distfiles could be added.

post-install:
	@echo
	@echo "This software has restrictive licensing terms which prohibit" 
	@echo "its redistribution."
	@echo 
	@echo "Read ${JDK_PATH}/LICENSE for more information."
	@echo

.include <bsd.port.mk>
