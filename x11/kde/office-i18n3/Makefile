# $OpenBSD: Makefile,v 1.8 2004/08/15 22:31:53 sturm Exp $

FLAVORS=af bg ca cs da de el en_GB eo es et fa fi fr he hu \
    it ja lo mt nb nl nn pl pt pt_BR ru sk sl sr sv th tr ven \
    xh zh_CN zh_TW zu
FLAVOR?=fr

.for i in ${FLAVORS}
.  if ${FLAVOR:L} == ${i:L}
FLAVOR=		${i}
.  endif
.endfor

FULLPKGNAME=	koffice-i18n-${FLAVOR}-${VERSION}

COMMENT=		"${FLAVOR} translations for koffice"

CATEGORIES=		x11 x11/kde
VERSION=		1.3
DISTNAME=		koffice-i18n-${FLAVOR}-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES= ${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}

SUPDISTFILES=
.for i in ${FLAVORS}
SUPDISTFILES+= koffice-i18n-$i-${VERSION}${EXTRACT_SUFX}
.endfor

BUILD_DEPENDS = ::x11/kde/libs3

PLIST=${PKGDIR}/PLIST.${FLAVOR}

MODKDE_VERSION=
MODKDE_NODEBUG=Yes

MAKE_FLAGS+=MEINPROC=
FAKE_FLAGS=DESTDIR=${WRKINST} MEINPROC=

# some extra vars to compact PLISTs
DOC=share/doc/HTML/${FLAVOR}/
LOC=share/locale/${FLAVOR}/LC_MESSAGES/
I=index.docbook
SUBST_VARS=DOC LOC I

.include <bsd.port.mk>
