# $OpenBSD: Makefile,v 1.1.1.1 2012/10/22 18:13:11 jasper Exp $

COMMENT=		open source alternative to Microsoft Project

DISTNAME=		projectlibre-1.5.1
CATEGORIES=		productivity

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://www.projectlibre.org/

# Common Public Attribution License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=projectlibre/}

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_JRERUN=	Yes

RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=       Yes
NO_REGRESS=     Yes

PKG_ARCH=       *

do-install:
	@${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c \
		${FILESDIR}/projectlibre \
		${PREFIX}/bin/projectlibre
	chmod +x ${PREFIX}/bin/projectlibre
	${INSTALL_DATA_DIR} ${PREFIX}/lib/projectlibre/lib/
	${INSTALL_DATA} ${WRKSRC}/projectlibre.jar ${PREFIX}/lib/projectlibre/
	${INSTALL_DATA} ${WRKSRC}/lib/* ${PREFIX}/lib/projectlibre/lib/

.include <bsd.port.mk>
