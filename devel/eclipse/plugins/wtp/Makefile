# $OpenBSD: Makefile,v 1.1.1.1 2006/07/19 01:36:52 ian Exp $

COMMENT=		"Web Tools Platform for Eclipse"

V=			1.5.0
DISTNAME=		wtp-sdk-R-${V}-200606281455
PKGNAME=		eclipse-plugin-wtp-sdk-${V}
CATEGORIES=		devel/eclipse/plugins java

HOMEPAGE=		http://www.eclipse.org/webtools/

MAINTAINER=		Ian Darwin <ian@darwinsys.com>

EXTRACT_SUFX=           .zip

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/webtools/downloads/drops/R-${V}-200606281455/

BUILD_DEPENDS=		:gtar-*:archivers/gtar
RUN_DEPENDS=		:eclipse-plugin-emf-sdk->=2.2.0:devel/eclipse/plugins/emf\
			:eclipse-plugin-gef-sdk->=3.2:devel/eclipse/plugins/gef\
			:eclipse-plugin-jem-sdk->=1.2:devel/eclipse/plugins/jem

USE_ZIP=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

TAR=			${LOCALBASE}/bin/gtar

do-install:
	cd ${WRKDIST} && ${TAR} cf - eclipse | \
		(cd ${PREFIX} && ${TAR} -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
