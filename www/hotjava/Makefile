# $OpenBSD: Makefile,v 1.10 2001/01/05 16:36:01 brad Exp $
# $FreeBSD: ports/www/hotjava/Makefile,v 1.4 2000/02/16 00:19:45 mharo Exp $

DISTNAME=	hotjava-3.0
CATEGORIES=	www
NEED_VERSION=	1.336
MASTER_SITES=
DISTFILES=	hjb3_0-linux.sfx

EXTRACT_CASES=*.sfx) uudecode ${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://java.sun.com/products/hotjava/

BUILD_DEPENDS=	${PREFIX}/${JAR}::devel/jdk
RUN_DEPENDS=	${PREFIX}/${JAVA}::devel/jdk

MAINTAINER=	Chris Cappuccio <chris@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

JDK=	jdk1.1.8
JAR=	${JDK}/bin/jar
JAVA=	${JDK}/bin/java

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo "  The source to this port may not be automatically fetched" ; \
	   echo "  due to licensing restrictions. You must fetch the source" ; \
	   echo "  manually, after reading and agreeing to the license at:" ; \
	   echo "" ; \
	   echo "      http://java.sun.com/products/hotjava/" ; \
	   echo "" ; \
	   echo "  Once ${DISTFILES} has been downloaded, move it to ${DISTDIR}"; \
	   echo "  and then restart this build." ; \
	   echo "" ; \
	   exit 1 ; \
	fi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/HotJava
	cd ${PREFIX}/share/java/HotJava && \
		${TRUEPREFIX}/${JAR} xf ${WRKDIST}/hjb3_0.jar
	cd ${PREFIX}/share/java/HotJava && chmod -R a+rX *
	echo '#! /bin/sh' >${PREFIX}/bin/hotjava
	echo 'exec ${TRUEPREFIX}/${JAVA} -classpath \
	${TRUEPREFIX}/${JDK}/lib/classes.zip:${TRUEPREFIX}/share/java/HotJava/Browser.jar \
	sunw.hotjava.Main -Dhotjava.home=${TRUEPREFIX}/share/java/HotJava $$@' \
		>>${PREFIX}/bin/hotjava
	chmod a+rx ${PREFIX}/bin/hotjava

.include <bsd.port.mk>
