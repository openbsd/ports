COMMENT=	web-based LDAP browser to manage LDAP servers

CATEGORIES=	www

GH_ACCOUNT=	leenooks
GH_TAGNAME=	1.2.6.5
GH_PROJECT=	phpLDAPadmin
PKGNAME=	${DISTNAME:L}

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
	find ${PREFIX}/phpldapadmin -name '*${PATCHORIG}' -delete
	chown -R root:daemon ${PREFIX}/phpldapadmin

.include <bsd.port.mk>
