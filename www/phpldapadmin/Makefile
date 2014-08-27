# $OpenBSD: Makefile,v 1.41 2014/08/27 06:58:00 ajacoutot Exp $

COMMENT=	web-based LDAP browser to manage LDAP servers

VERSION=	1.2.3
DISTNAME=	phpldapadmin-${VERSION}
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
