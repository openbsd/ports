# $OpenBSD: Makefile,v 1.9 2013/02/07 20:12:52 jasper Exp $

COMMENT=		IVY plug-in for Eclipse IDE

VERSION=		1.2.0
DISTNAME=		org.jayasoft.ivyde.eclipse_${VERSION}
PKGNAME=		eclipse-plugin-ivyde-${VERSION}
CATEGORIES+=		java
REVISION =		0

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://incubator.apache.org/ivy/ivyde/

MASTER_SITES=		http://www.jaya.free.fr/downloads/ivyde/

RUN_DEPENDS=		devel/eclipse/sdk

SUBST_VARS=		VERSION

WRKDIST=		${WRKDIR}

# Distfile is an Update Site download, unpack features jar manually, 
# still tar plugins over into ${PREFIX}
do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/eclipse
		cd ${WRKDIST} && tar cfL - plugins | \
			(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
