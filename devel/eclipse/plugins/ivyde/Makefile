# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:03 espie Exp $

COMMENT=		IVY plug-in for Eclipse IDE

VERSION=		1.2.0
DISTNAME=		org.jayasoft.ivyde.eclipse_${VERSION}
PKGNAME=		eclipse-plugin-ivyde-${VERSION}
CATEGORIES+=		java
REVISION =		1

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		http://incubator.apache.org/ivy/ivyde/

MASTER_SITES=		http://www.jaya.free.fr/downloads/ivyde/

SUBST_VARS=		VERSION

# Distfile is an Update Site download, unpack features jar manually, 
# still tar plugins over into ${PREFIX}
do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/eclipse
		cd ${WRKDIST} && tar cfL - plugins | \
			(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
