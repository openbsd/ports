COMMENT=	roundcube plugin: LDAP Alias Sync

GH_ACCOUNT=	brenard
GH_PROJECT=	ldapAliasSync
GH_COMMIT=	cde67be43126e0a3ba6295489e6f291d06059aad
DISTNAME=	rcube-ldapAliasSync-20240826
REVISION=	1

CATEGORIES=	mail www

HOMEPAGE=	https://github.com/brenard/ldapAliasSync

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

RUN_DEPENDS=	mail/roundcubemail>=1.1 \
		lang/php/${MODPHP_VERSION},-ldap

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/ldapAliasSync
	cp -Rp ${WRKDIST}/* ${INSTDIR}/ldapAliasSync
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*${PATCHORIG} -or -name \*.src \) -delete

.include <bsd.port.mk>
