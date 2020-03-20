# $OpenBSD: Makefile,v 1.50 2020/03/20 16:44:28 naddy Exp $

COMMENT=	web-based LDAP browser to manage LDAP servers

VERSION=	1.2.3
DISTNAME=	phpldapadmin-${VERSION}
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/
REVISION=	7

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
		security/pecl-mcrypt${MODPHP_FLAVOR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/phpldapadmin
	cd ${WRKBUILD} && tar -cf - * .* | \
		tar -C ${PREFIX}/phpldapadmin -xf -
	find ${PREFIX}/phpldapadmin -name '*.orig' -delete
	chown -R root:daemon ${PREFIX}/phpldapadmin

.include <bsd.port.mk>
