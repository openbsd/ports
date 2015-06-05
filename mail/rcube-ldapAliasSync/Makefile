# $OpenBSD: Makefile,v 1.2 2015/06/05 06:00:21 robert Exp $

COMMENT=	roundcube plugin: LDAP Alias Sync

GH_ACCOUNT=	dim-0
GH_PROJECT=	ldapAliasSync
GH_COMMIT=	a822fdb9f6b3b27192460d7a8cc3464561491731
DISTNAME=	rcube-ldapAliasSync-20150126
DISTFILES=	${DISTNAME}{${GH_COMMIT}}${EXTRACT_SUFX}
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
RUN_DEPENDS=	mail/roundcubemail>=1.1 \
		lang/php/${MODPHP_VERSION},-ldap

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/ldapAliasSync
	cp -Rp ${WRKDIST}/* ${INSTDIR}/ldapAliasSync
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
