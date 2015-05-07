# $OpenBSD: Makefile,v 1.17 2015/05/07 19:19:23 kurt Exp $

COMMENT=		graphical editing environment for eclipse

V=			3.2.2
DISTNAME=		GEF-SDK-${V}
PKGNAME=		eclipse-plugin-gef-sdk-${V}
CATEGORIES+=		java
REVISION =		1

HOMEPAGE=		http://www.eclipse.org/gef/

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/tools/gef/downloads/drops/R-3.2.2-200702081315/

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
