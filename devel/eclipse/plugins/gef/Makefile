# $OpenBSD: Makefile,v 1.3 2005/08/09 14:51:30 kurt Exp $

COMMENT=		"graphical editing environment for eclipse"

V=			3.1
DISTNAME=		GEF-SDK-${V}
PKGNAME=		eclipse-plugin-gef-sdk-${V}
CATEGORIES=		devel/eclipse/plugins java

HOMEPAGE=		http://www.eclipse.org/gef/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

EXTRACT_SUFX=           .zip

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/tools/gef/downloads/drops/R-3.1-200507071758/

RUN_DEPENDS=		::devel/eclipse/sdk

USE_ZIP=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

SUBST_VARS=		V

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)

.include <bsd.port.mk>
