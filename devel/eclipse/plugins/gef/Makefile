# $OpenBSD: Makefile,v 1.12 2013/02/04 13:11:43 jasper Exp $

COMMENT=		graphical editing environment for eclipse

V=			3.2.2
DISTNAME=		GEF-SDK-${V}
PKGNAME=		eclipse-plugin-gef-sdk-${V}
CATEGORIES+=		java
REVISION =		0

HOMEPAGE=		http://www.eclipse.org/gef/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

EXTRACT_SUFX=           .zip

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/tools/gef/downloads/drops/R-3.2.2-200702081315/

RUN_DEPENDS=		devel/eclipse/sdk>=3.2

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
