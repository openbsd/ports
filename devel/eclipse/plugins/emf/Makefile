# $OpenBSD: Makefile,v 1.3 2005/08/09 14:50:14 kurt Exp $

COMMENT=		"Eclipse Modeling Framework (EMF)"

V=			2.1.1
DISTNAME=		emf-sdo-xsd-SDK-M200508040005
PKGNAME=		eclipse-plugin-emf-sdk-${V}
CATEGORIES=		devel/eclipse/plugins java

HOMEPAGE=		http://www.eclipse.org/emf/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

EXTRACT_SUFX=           .zip

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/tools/emf/downloads/drops/${V}/M200508040005/

RUN_DEPENDS=		::devel/eclipse/sdk

USE_ZIP=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

SUBST_VARS=		V

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
