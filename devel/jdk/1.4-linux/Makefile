# $OpenBSD: Makefile,v 1.1.1.1 2002/08/01 05:56:56 kevlo Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Java Development Kit for Java 2 Standard Edition 1.4"
VERSION=	1.4.0_01

DISTNAME=	jdk${VERSION}
PKGNAME=	jdk-linux-${VERSION}
CATEGORIES=	devel java

HOMEPAGE=	http://java.sun.com/j2se/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

DISTFILES=	j2sdk-${VERSION:S/./_/g}-linux-i586.bin
EXTRACT_CASES+=	*.bin) \
		    tail `sed -n -e '/^tail/p' -e '/^tail/q' ${DISTDIR}/$$archive|awk '{print $$2}'` ${DISTDIR}/$$archive > ${WRKDIR}/$$archive && \
		    chmod u+x ${WRKDIR}/$$archive && \
		    ${WRKDIR}/$$archive -q ;; \

BUILD_DEPENDS=	:redhat_base->=6.2:emulators/redhat/base
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/j2sdk1.4.0_01

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo " You must fetch the distfile for this port manually" ; \
	   echo " after agreeing to the license agreement at" ; \
	   echo "" ; \
	   echo "     http://java.sun.com/j2se/1.4/download.html" ; \
	   echo "" ; \
	   echo " Choose the 'Linux GNUZIP Tar shell script' option and place" ; \
	   echo " ${DISTFILES} into ${DISTDIR}." ; \
	   echo "" ; \
           exit 1 ; \
	fi

JDK_HOME=	${PREFIX}/jdk1.4.0-linux

pre-install:
	@${INSTALL_DATA_DIR} ${JDK_HOME}

do-install:
	@cp -Rp ${WRKSRC}/* ${JDK_HOME}
	
.include <bsd.port.mk>

