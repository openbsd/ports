# $OpenBSD: Makefile,v 1.4 2013/04/04 16:28:20 jasper Exp $

COMMENT=	innovative open source CMS and framework

V=		3.0.5
DISTNAME=	SilverStripe-cms-v${V}
PKGNAME=	silverstripe-${V}
REVISION=	1

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
.for f in .htaccess _config.php
	mv ${PREFIX}/silverstripe/mysite/${f} ${PREFIX}/silverstripe/mysite/${f}.dist
.endfor

.include <bsd.port.mk>
