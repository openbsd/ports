#
# From:
# $FreeBSD: ports/www/hotjava/Makefile,v 1.4 2000/02/16 00:19:45 mharo Exp $
#

DISTNAME=	hjb3_0-linux.sfx
PKGNAME=	hotjava-3.0
CATEGORIES=	www
MASTER_SITES=
EXTRACT_SUFX=

MAINTAINER=	chris@OpenBSD.org

RUN_DEPENDS=	${PREFIX}/jdk${JDK_VERSION}/bin/java::devel/jdk

LICENSE_TYPE=		NOFEE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

EXTRACT_ONLY=

WRKSRC=		${WRKDIR}
JDK_VERSION=    1.1.8
NO_BUILD=	Yes
NO_PATCH=	Yes
NO_CONFIGURE=	Yes
NO_PACKAGE=	Yes

HOMEPAGE= http://java.sun.com/products/hotjava/

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

pre-install:
	@sed -e s,/usr/bin/hotjava,${PREFIX}/bin/hotjava,g ${DISTDIR}/${DISTNAME} > ${WRKDIR}/${DISTNAME}
	@${INSTALL_DATA_DIR} ${PREFIX}/share
	@${INSTALL_DATA_DIR} ${PREFIX}/share/java

do-install:
	@sh ${WRKDIR}/${DISTNAME} ${PREFIX}/jdk${JDK_VERSION} ${PREFIX}/share/java

.include <bsd.port.mk>
