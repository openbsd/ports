# $OpenBSD: Makefile,v 1.17 2014/03/24 15:08:21 ajacoutot Exp $

COMMENT=	monitoring and reporting tool for bacula(8)

DISTNAME=	bacula-web-6.0.0
EXTRACT_SUFX=	.tgz
REVISION=	3

CATEGORIES=	www sysutils

HOMEPAGE=	http://www.bacula-web.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.bacula-web.org/files/bacula-web.org/downloads/

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/bacula-web
TINSTDIR=	${TRUEPREFIX}/bacula-web
SUBST_VARS=	INSTDIR TINSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	rm ${PREFIX}/bacula-web/application/config/config.php.sample.orig
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
