# $OpenBSD: Makefile,v 1.18 2003/12/08 02:03:38 brad Exp $

FLAVORS=af ar bg bs ca cs da de el en_GB eo es et eu fa fi fr he hr hu \
    is it ja lt mk mt nb nl nn nso pl pt pt_BR ro ru se sk sl sr ss sv \
    ta th tr uk ven vi xh zh_CN zh_TW zu
FLAVOR?=fr

FULLPKGNAME=	kde-i18n-${FLAVOR}-${VERSION}

COMMENT=		"${FLAVOR} translations for kde3"

CATEGORIES=		x11 x11/kde
VERSION=		3.1.4
DISTNAME=		kde-i18n-${FLAVOR}-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES= ${MASTER_SITE_KDE:S@$@stable/${VERSION}/src/kde-i18n/@}

SUPDISTFILES=
.for i in ${FLAVORS}
SUPDISTFILES+= kde-i18n-$i-${VERSION}${EXTRACT_SUFX}
.endfor

BUILD_DEPENDS = ::x11/kde/libs3

PLIST=${PKGDIR}/PLIST.${FLAVOR}
PATCH_LIST=	patch-*
MODKDE_VERSION=
MODKDE_NODEBUG=Yes

MAKE_FLAGS+=MEINPROC=
FAKE_FLAGS=DESTDIR=${WRKINST} MEINPROC=

# some extra vars to compact PLISTs
DOC=share/doc/HTML/${FLAVOR}/
LOC=share/locale/${FLAVOR}/LC_MESSAGES/
I=index.docbook
C=index.cache.bz2
SUBST_VARS=DOC LOC I C

.include <bsd.port.mk>
