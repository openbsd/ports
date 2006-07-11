# $OpenBSD: Makefile,v 1.2 2006/07/11 18:30:53 kurt Exp $

COMMENT=		"UML diagram framework for Eclipse"

V=			2.0.0
DISTNAME=		uml2-SDK-${V}
PKGNAME=		eclipse-plugin-uml2-sdk-${V}
CATEGORIES=		devel/eclipse/plugins java

HOMEPAGE=		http://www.eclipse.org/uml2/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

EXTRACT_SUFX=           .zip

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
PERMIT_PACKAGE_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/tools/uml2/downloads/drops/${V}/R200606221411/

RUN_DEPENDS=		:eclipse-plugin-emf-sdk->=2.2:devel/eclipse/plugins/emf

USE_ZIP=		Yes
NO_BUILD=		Yes

WRKDIST=		${WRKDIR}

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
