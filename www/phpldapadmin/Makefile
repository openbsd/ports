# $OpenBSD: Makefile,v 1.48 2019/07/12 20:51:00 sthen Exp $

COMMENT=	web-based LDAP browser to manage LDAP servers

VERSION=	1.2.3
DISTNAME=	phpldapadmin-${VERSION}
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/
REVISION=	6

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpldapadmin/}
EXTRACT_SUFX=	.tgz

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/phpldapadmin
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap \
		lang/php/${MODPHP_VERSION},-mcrypt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/phpldapadmin
	cd ${WRKBUILD} && tar -cf - * .* | \
		tar -C ${PREFIX}/phpldapadmin -xf -
	find ${PREFIX}/phpldapadmin -name '*.orig' | xargs -r rm -f
	chown -R root:daemon ${PREFIX}/phpldapadmin

.include <bsd.port.mk>
