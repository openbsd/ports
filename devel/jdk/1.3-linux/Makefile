# $OpenBSD: Makefile,v 1.19 2003/12/15 17:16:45 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Java Development Kit for Java 2 Standard Edition 1.3"
VERSION=	1.3.1_09

DISTNAME=	jdk${VERSION}
PKGNAME=	jdk-linux-${VERSION}
CATEGORIES=	devel java

HOMEPAGE=	http://java.sun.com/j2se/
MAINTAINER=	Christian Edward Gruber <cgruber@israfil.net>

BUILD_DEPENDS=	:redhat_base->=6.2:emulators/redhat/base
RUN_DEPENDS=	${BUILD_DEPENDS}
DISTFILES=	j2sdk-${VERSION:S/./_/g}-linux-i586.bin
EXTRACT_CASES+=	*.bin) \
		    tail `sed -n -e '/^tail/p' -e '/^tail/q' ${FULLDISTDIR}/$$archive|awk '{print $$2}'` ${FULLDISTDIR}/$$archive > ${WRKDIR}/$$archive && \
		    chmod u+x ${WRKDIR}/$$archive && \
		    ${WRKDIR}/$$archive -q ;; \

PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

NO_BUILD=	Yes
NO_REGRESS=	Yes

FETCH_MANUALLY = " You must fetch the distfile for this port manually"
FETCH_MANUALLY+= " after agreeing to the license agreement at"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "     http://java.sun.com/j2se/1.3/download-linux.html"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= " Choose the '* Linux self-extracting file' option and place"
FETCH_MANUALLY+= " ${DISTFILES} into ${FULLDISTDIR}."

JDK_HOME=	${PREFIX}/jdk1.3.1-linux

pre-install:
	@${INSTALL_DATA_DIR} ${JDK_HOME}

# Add OpenBSD resource bundle for javah
post-patch:
	@mkdir -p ${WRKSRC}/lib/com/sun/tools/javah/resources
	@touch ${WRKSRC}/lib/com/sun/tools/javah/resources/OpenBSD_i386.properties
	@${WRKSRC}/bin/jar -0uvf ${WRKSRC}/lib/tools.jar -C ${WRKSRC}/lib \
	    com/sun/tools/javah/resources/OpenBSD_i386.properties

do-install:
	@cp -Rp ${WRKDIST}/* ${JDK_HOME}
	
.include <bsd.port.mk>
