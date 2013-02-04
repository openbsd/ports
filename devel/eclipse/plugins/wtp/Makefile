# $OpenBSD: Makefile,v 1.10 2013/02/04 13:11:43 jasper Exp $

COMMENT=		Web Tools Platform for Eclipse

V=			1.5.4
DISTNAME=		wtp-sdk-R-${V}-200705021353
PKGNAME=		eclipse-plugin-wtp-sdk-${V}
REVISION =		0
CATEGORIES+=		java
EXTRACT_SUFX=		.zip
PKG_ARCH=		*

HOMEPAGE=		http://www.eclipse.org/webtools/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/webtools/downloads/drops/R1.5/R-${V}-200705021353/

BUILD_DEPENDS=		archivers/gtar
RUN_DEPENDS=		devel/eclipse/plugins/emf>=2.2.0 \
			devel/eclipse/plugins/gef>=3.2.2

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

TAR=			${LOCALBASE}/bin/gtar

do-install:
	cd ${WRKDIST} && ${TAR} cf - eclipse | \
		(cd ${PREFIX} && ${TAR} -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}

.include <bsd.port.mk>
