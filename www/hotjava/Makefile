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

RUN_DEPENDS=	${PREFIX}/jdk${JDK_VERSION}/bin/java:devel/jdk

PREMIT_PACKAGE_CDROM=	NO
PERMIT_PACKAGE_FTP=	NO
PERMIT_DISTFILES_CDROM=	NO
PERMIT_DISTFILES_FTP=	NO

EXTRACT_ONLY=

WRKSRC=		${WRKDIR}
JDK_VERSION=    1.1.8
NO_BUILD=	yes
NO_PATCH=	yes
NO_MTREE=	yes
NO_CONFIGURE=	yes
NO_PACKAGE=	yes

.if exists(${DISTDIR}/${DISTNAME})
IGNORE='You must fetch the linux version manually from http://java.sun.com/products/hotjava/ and copy the file to ${DISTDIR}/${DISTNAME} and run make again.'
.endif

pre-patch:
	@sed -e s,/usr/bin/hotjava,${PREFIX}/bin/hotjava,g ${DISTDIR}/${DISTNAME} > ${WRKDIR}/${DISTNAME}

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share
	@${INSTALL_DATA_DIR} ${PREFIX}/share/java

do-install:
	@sh ${WRKDIR}/${DISTNAME} ${PREFIX}/jdk${JDK_VERSION} ${PREFIX}/share/java

.include <bsd.port.mk>
