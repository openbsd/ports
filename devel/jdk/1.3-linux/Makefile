# $OpenBSD: Makefile,v 1.13 2003/01/19 09:13:56 pvalchev Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Java Development Kit for Java 2 Standard Edition 1.3"
VERSION=	1.3.1_06

DISTNAME=	jdk${VERSION}
PKGNAME=	jdk-linux-${VERSION}
CATEGORIES=	devel java

HOMEPAGE=	http://java.sun.com/j2se/
MAINTAINER=	Christian Edward Gruber <cgruber@israfil.net>

BUILD_DEPENDS=	:redhat_base->=6.2:emulators/redhat/base
RUN_DEPENDS=	${BUILD_DEPENDS}
DISTFILES=	j2sdk-${VERSION:S/./_/g}-linux-i586.bin
EXTRACT_CASES+=	*.bin) \
		    tail `sed -n -e '/^tail/p' -e '/^tail/q' ${DISTDIR}/$$archive|awk '{print $$2}'` ${DISTDIR}/$$archive > ${WRKDIR}/$$archive && \
		    chmod u+x ${WRKDIR}/$$archive && \
		    ${WRKDIR}/$$archive -q ;; \

PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo " You must fetch the distfile for this port manually" ; \
	   echo " after agreeing to the license agreement at" ; \
	   echo "" ; \
	   echo "     http://java.sun.com/j2se/1.3/download-linux.html" ; \
	   echo "" ; \
	   echo " Choose the '* Linux self-extracting file' option and place" ; \
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
