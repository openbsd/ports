# $OpenBSD: Makefile,v 1.2 2002/12/15 16:21:32 espie Exp $

FLAVORS=af ar bs cs da de el en_GB eo es et fr he hu \
    it ja lt lv mt nb nl nn pl pt pt_BR ru sk sl sv th tr uk ven \
    xh zh_TW zu
FLAVOR?=fr

FULLPKGNAME=	koffice-i18n-${FLAVOR}-${VERSION}

COMMENT=		${FLAVOR} translations for koffice

CATEGORIES=		x11 x11/kde
VERSION=		1.2.1
DISTNAME=		koffice-i18n-${FLAVOR}-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES= ${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}

SUPDISTFILES=
.for i in ${FLAVORS}
SUPDISTFILES+= koffice-i18n-$i-${VERSION}${EXTRACT_SUFX}
.endfor
WRKDIST=${WRKDIR}/koffice-i18n-${FLAVOR}

BUILD_DEPENDS = ::x11/kde/libs3

PLIST=${PKGDIR}/PLIST.${FLAVOR}
#.if ${FLAVOR:L:Mfr}
#.endif

PATCH_LIST=patch-* 
# some extra vars to compact PLISTs
DOC=share/doc/HTML/${FLAVOR}/
LOC=share/locale/${FLAVOR}/LC_MESSAGES/
I=index.docbook
C=index.cache.bz2
SUBST_VARS=DOC LOC I C

# kludge for problem in 1.2 tarballs.
#.if ${FLAVOR:L} == "fr"
#pre-build:
#	touch ${WRKDIST}/docs/koffice/kugar/homecoordinationHEADkde-i18nfrdocskofficekugartut_empty_report.png
#.endif

.include <bsd.port.mk>
