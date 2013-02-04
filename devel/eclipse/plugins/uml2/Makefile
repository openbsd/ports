# $OpenBSD: Makefile,v 1.9 2013/02/04 13:11:43 jasper Exp $

COMMENT=		UML diagram framework for Eclipse

V=			2.0.3
DISTNAME=		uml2-SDK-${V}
PKGNAME=		eclipse-plugin-uml2-sdk-${V}
CATEGORIES+=		java

HOMEPAGE=		http://www.eclipse.org/uml2/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

EXTRACT_SUFX=           .zip

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/modeling/mdt/uml2/downloads/drops/${V}/R200702141227/

RUN_DEPENDS=		devel/eclipse/plugins/emf>=2.2.2

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
