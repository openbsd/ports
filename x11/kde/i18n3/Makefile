# $OpenBSD: Makefile,v 1.25 2004/08/15 22:31:53 sturm Exp $

FLAVORS=ar az bg bn bs ca cs cy da de el en_GB es et eu fa fi fr gl he hi \
	hr hsb hu is it ja lt mn ms nb nds nl nn pl pt pt_BR ro ru sk sl \
	sr sr@Latn sv tg tr uk uz zh_CN zh_TW
FLAVOR?=fr

.for i in ${FLAVORS}
.  if ${FLAVOR:L} == ${i:L}
FLAVOR=		${i}
.  endif
.endfor

FULLPKGNAME=	kde-i18n-${FLAVOR}-${VERSION}

COMMENT=		"${FLAVOR} translations for KDE"

CATEGORIES=		x11 x11/kde
VERSION=		3.2.3
DISTNAME=		kde-i18n-${FLAVOR}-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES= ${MASTER_SITE_KDE:S@$@stable/3.2.3/src/kde-i18n/@}

SUPDISTFILES=
.for i in ${FLAVORS}
SUPDISTFILES+= kde-i18n-$i-${VERSION}${EXTRACT_SUFX}
.endfor

BUILD_DEPENDS = ::x11/kde/libs3
RUN_DEPENDS = ::x11/kde/libs3

PLIST=${PKGDIR}/PLIST.${FLAVOR}
PATCH_LIST=	patch-*
MODKDE_VERSION=
CONFIGURE_STYLE=gnu

MAKE_FLAGS+=MEINPROC=
FAKE_FLAGS=DESTDIR=${WRKINST} MEINPROC=

# some extra vars to compact PLISTs
DOC=share/doc/HTML/${FLAVOR}/
LOC=share/locale/${FLAVOR}/LC_MESSAGES/
I=index.docbook
C=index.cache.bz2
SUBST_VARS=DOC LOC I C
.if ${FLAVOR:L} == "ta"
PATCH_LIST=ta-patch-*
.endif

.include <bsd.port.mk>
