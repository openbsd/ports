# $OpenBSD: Makefile,v 1.9 2003/01/06 07:34:01 espie Exp $

FLAVORS=af ar az bg bs ca cs da de el en_GB eo es et fi fr he hr hu id is \
    it ja ko lt lv mt nb nl nn pl pt pt_BR ro ru sk sl sv ta th tr uk ven \
    vi xh zh_CN zh_TW zu
FLAVOR?=fr

FULLPKGNAME=	kde-i18n-${FLAVOR}-${VERSION}

COMMENT=		${FLAVOR} translations for kde3

CATEGORIES=		x11 x11/kde
VERSION=		3.0.5
DISTNAME=		kde-i18n-${FLAVOR}-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES= ${MASTER_SITE_KDE:S@$@stable/${VERSION}/src/kde-i18n/@}

SUPDISTFILES=
.for i in ${FLAVORS}
SUPDISTFILES+= kde-i18n-$i-${VERSION}${EXTRACT_SUFX}
.endfor
WRKDIST=${WRKDIR}/kde-i18n-${FLAVOR}

BUILD_DEPENDS = ::x11/kde/libs3

PLIST=${PKGDIR}/PLIST.${FLAVOR}
PATCH_LIST=	patch-*

# some extra vars to compact PLISTs
DOC=share/doc/HTML/${FLAVOR}/
LOC=share/locale/${FLAVOR}/LC_MESSAGES/
I=index.docbook
C=index.cache.bz2
SUBST_VARS=DOC LOC I C

.include <bsd.port.mk>
