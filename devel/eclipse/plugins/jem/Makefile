# $OpenBSD: Makefile,v 1.1.1.1 2006/07/19 01:29:11 ian Exp $

COMMENT=		"java EMF model runtime for Eclipse"

V=			1.2
DISTNAME=		JEM-SDK-${V}
PKGNAME=		eclipse-plugin-jem-sdk-${V}
CATEGORIES=		devel/eclipse/plugins java

HOMEPAGE=		http://www.eclipse.org/vep/WebContent/docs/components/javamodel/javaModel.html

MAINTAINER=		Ian Darwin <ian@darwinsys.com>

EXTRACT_SUFX=           .zip

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/tools/ve/downloads/drops/R-1.2-200606280938/

RUN_DEPENDS=		:eclipse-sdk->=3.2:devel/eclipse/sdk

USE_ZIP=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
