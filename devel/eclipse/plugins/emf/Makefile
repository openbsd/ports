# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:03 espie Exp $

COMMENT=		Eclipse Modeling Framework (EMF)

V=			2.2.3
DISTNAME=		emf-sdo-xsd-SDK-${V}
PKGNAME=		eclipse-plugin-emf-sdk-${V}
CATEGORIES+=		java
REVISION =		0

HOMEPAGE=		http://www.eclipse.org/emf/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/modeling/emf/emf/downloads/drops/${V}/R200705141058/

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
