# $OpenBSD: Makefile,v 1.1.1.1 2005/02/04 17:18:10 kurt Exp $

COMMENT=		"UML diagram framework for Eclipse"

V=			1.0.2
BUILD=			M200411250729
DISTNAME=		uml2-SDK-${BUILD}
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

MASTER_SITES=		http://download.eclipse.org/tools/uml2/downloads/drops/${V}/${BUILD}/

RUN_DEPENDS=		:eclipse-plugin-emf-sdk-*:devel/eclipse/plugins/emf

USE_ZIP=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

SUBST_VARS=		V

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)

.include <bsd.port.mk>
