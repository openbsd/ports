# $OpenBSD: Makefile,v 1.3 2013/03/25 10:26:49 jasper Exp $

COMMENT=	innovative open source CMS and framework

V=		3.0.5
DISTNAME=	SilverStripe-cms-v${V}
PKGNAME=	silverstripe-${V}
REVISION=	0

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://www.silverstripe.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/assets/releases/
TAR=		${LOCALBASE}/bin/gtar

MODULES=	lang/php

BUILD_DEPENDS=	archivers/gtar
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		www/xcache

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/silverstripe/
SUBST_VARS+=	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && tar cf - . | (cd ${INSTDIR}; tar xf -)

.include <bsd.port.mk>
