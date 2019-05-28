# $OpenBSD: Makefile,v 1.9 2019/05/28 20:08:35 sthen Exp $

COMMENT=	roundcube plugin: LDAP Alias Sync

GH_ACCOUNT=	brenard
GH_PROJECT=	ldapAliasSync
GH_COMMIT=	73f9644eb181f39aa98ca5e173d3b2e74155bf7b
DISTNAME=	rcube-ldapAliasSync-20170701
REVISION=	0

CATEGORIES=	mail www

HOMEPAGE=	https://github.com/dim-0/ldapAliasSync/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
MODPHP_VERSION=	7.3

RUN_DEPENDS=	mail/roundcubemail>=1.1 \
		lang/php/${MODPHP_VERSION},-ldap

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/ldapAliasSync
	cp -Rp ${WRKDIST}/* ${INSTDIR}/ldapAliasSync
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -delete

.include <bsd.port.mk>
