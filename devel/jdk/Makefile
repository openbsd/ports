# $OpenBSD: Makefile,v 1.4 2000/06/16 05:25:28 chris Exp $
#
# See http://www.freebsd.org/java/ for software updates, etc.

DISTNAME=	jdk-${JDK_VERSION}
CATEGORIES=	devel
MASTER_SITES=	http://www.freebsd.org/~patrick/ \
		ftp://ftp.nuxi.com/pub/FreeBSD/JDK/ \
		http://ftp7.de.freebsd.org/pub/FreeBSD/JDK/

HOMEPAGE=	http://www.freebsd.org/java/

JDK_VERSION=	1.1.8
JDK_PATH=	${PREFIX}/jdk${JDK_VERSION}

MAINTAINER=	chris@OpenBSD.org

RUN_DEPENDS=	/emul/freebsd/usr/lib/libc.so.3.1::emulators/freebsd_lib

LICENSE_TYPE=		NOFEE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

ONLY_FOR_ARCHS=	i386

NO_BUILD=	Yes
NO_CONFIGURE=	Yes
NO_PATCH=	Yes
EXTRACT_ONLY=
FAKE=		Yes

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
