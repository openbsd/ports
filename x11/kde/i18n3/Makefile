# $OpenBSD: Makefile,v 1.21 2004/02/10 00:13:50 naddy Exp $

FLAVORS=az bg bs ca cs cy da de el en_GB es et eu fa fi fr gl he hi \
	hu it mn ms nb nl nn pl pt pt_BR ro ru se sk sl sr sv ta tr \
	uk uz zh_CN zh_TW
FLAVOR?=fr

FULLPKGNAME=	kde-i18n-${FLAVOR}-${VERSION}

COMMENT=		"${FLAVOR} translations for kde3"

CATEGORIES=		x11 x11/kde
VERSION=		3.2.0
DISTNAME=		kde-i18n-${FLAVOR}-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES= ${MASTER_SITE_KDE:S@$@stable/3.2/src/kde-i18n/@}

SUPDISTFILES=
.for i in ${FLAVORS}
SUPDISTFILES+= kde-i18n-$i-${VERSION}${EXTRACT_SUFX}
.endfor

BUILD_DEPENDS = ::x11/kde/libs3
RUN_DEPENDS = ::x11/kde/libs3

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
