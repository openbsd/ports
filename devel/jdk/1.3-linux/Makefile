# $OpenBSD: Makefile,v 1.5 2001/09/17 14:17:16 kevlo Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Java Development Kit for Java 2 Standard Edition 1.3"

DISTNAME=	jdk1.3.1_01
PKGNAME=	jdk-linux-1.3.1
CATEGORIES=	devel java
NEED_VERSION=	1.457

HOMEPAGE=	http://java.sun.com/j2se/
MAINTAINER=	Christian Gruber <christian.edward.gruber@gmx.net>

BUILD_DEPENDS=	/emul/linux/usr/X11R6/lib/libXp.so.6:redhat_base->=6.2:emulators/redhat/base
RUN_DEPENDS=	${BUILD_DEPENDS}
DISTFILES=	j2sdk-1_3_1_01-linux-i386.bin
EXTRACT_CASES+=	*.bin) \
		    tail +248 ${DISTDIR}/$$archive > ${WRKDIR}/$$archive && \
		    chmod u+x ${WRKDIR}/$$archive && \
		    ${WRKDIR}/$$archive -q ;; \

PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

NO_BUILD=	Yes

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo " You must fetch the distfile for this port manually" ; \
	   echo " after agreeing to the license agreement at" ; \
	   echo "" ; \
	   echo "     http://java.sun.com/j2se/1.3/download-linux.html" ; \
	   echo "" ; \
	   echo " Choose the 'GNUZIP Tar shell script' option and place" ; \
	   echo " ${DISTFILES} into ${DISTDIR}." ; \
	   echo "" ; \
           exit 1 ; \
	fi

JDK_HOME=	${PREFIX}/jdk1.3.1-linux

pre-install:
	@${INSTALL_DATA_DIR} ${JDK_HOME}

do-install:
	@cp -Rp ${WRKDIST}/* ${JDK_HOME}
	
.include <bsd.port.mk>

