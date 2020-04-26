# $OpenBSD: Makefile,v 1.51 2020/04/26 15:21:11 robert Exp $

COMMENT=	web-based LDAP browser to manage LDAP servers

DISTNAME=	phpldapadmin-${GH_TAGNAME}
CATEGORIES=	www
HOMEPAGE=	https://github.com/leenooks/phpLDAPadmin

GH_ACCOUNT=	leenooks
GH_TAGNAME=	1.2.5
GH_PROJECT=	phpLDAPadmin

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/phpldapadmin
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-ldap

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/phpldapadmin
	cd ${WRKBUILD} && tar -cf - * .* | \
		tar -C ${PREFIX}/phpldapadmin -xf -
	find ${PREFIX}/phpldapadmin -name '*.orig' -delete
	chown -R root:daemon ${PREFIX}/phpldapadmin

.include <bsd.port.mk>
