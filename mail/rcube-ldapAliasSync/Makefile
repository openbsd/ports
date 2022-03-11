COMMENT=	roundcube plugin: LDAP Alias Sync

GH_ACCOUNT=	brenard
GH_PROJECT=	ldapAliasSync
GH_COMMIT=	73f9644eb181f39aa98ca5e173d3b2e74155bf7b
DISTNAME=	rcube-ldapAliasSync-20170701
REVISION=	2

CATEGORIES=	mail www

HOMEPAGE=	https://github.com/dim-0/ldapAliasSync/

# GPLv3+
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
MODPHP_VERSION=	8.0

RUN_DEPENDS=	mail/roundcubemail>=1.1 \
		lang/php/${MODPHP_VERSION},-ldap

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/ldapAliasSync
	cp -Rp ${WRKDIST}/* ${INSTDIR}/ldapAliasSync
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*${PATCHORIG} -or -name \*.src \) -delete

.include <bsd.port.mk>
