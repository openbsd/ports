# $OpenBSD: Makefile,v 1.2 2007/05/15 19:30:42 kili Exp $

COMMENT=		"IVY plug-in for Eclipse IDE"

VERSION=		1.2.0
DISTNAME=		org.jayasoft.ivyde.eclipse_${VERSION}
PKGNAME=		eclipse-plugin-ivyde-${VERSION}
CATEGORIES=		devel/eclipse/plugins java
EXTRACT_SUFX=		.zip

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://incubator.apache.org/ivy/ivyde/

MASTER_SITES=		http://www.jaya.free.fr/downloads/ivyde/

RUN_DEPENDS=		:eclipse-sdk-*:devel/eclipse/sdk

SUBST_VARS=		VERSION

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

# Distfile is an Update Site download, unpack features jar manually, 
# still tar plugins over into ${PREFIX}
do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/eclipse
		cd ${WRKDIST} && tar cfL - plugins | \
			(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
