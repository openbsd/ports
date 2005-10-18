# $OpenBSD: Makefile,v 1.10 2005/10/18 18:32:55 espie Exp $

LANGS= bg ca cs cy da de el en_GB es et eu fi fr hu it nb nl nn pl \
	pt pt_BR ru sl sr sr@Latn sv ta tg zh_CN

# some extra vars to compact PLISTs
I=index.docbook
C=index.cache.bz2

FLAVOR?=fr
SUBST_VARS=I C
.for l in ${LANGS}
FLAVORS+=$l
.  if ${FLAVOR:M$l}
DISTFILES=koffice-l10n-$l-${VERSION}.tar.bz2
WRKDIST=${WRKDIR}/koffice-l10n-$l-${VERSION}
FULLPKGNAME=koffice-i18n-$l-${VERSION}
COMMENT= "$l translations for KDE"
DOC=share/doc/HTML/$l/
LOC=share/locale/$l/LC_MESSAGES/
.  endif
SUPDISTFILES+= koffice-l10n-$l-${VERSION}.tar.bz2
SUBST_VARS+=DOC LOC
.endfor

DISTNAME=		koffice-i18n-${VERSION}
CATEGORIES=		x11 x11/kde
VERSION=		1.4.2
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES=	${MASTER_SITE_KDE:=stable/koffice-1.4.2/src/koffice-l10n/}

BUILD_DEPENDS = ::x11/kde/libs3
RUN_DEPENDS = ::x11/kde/libs3

PATCH_LIST=	patch-*
MODKDE_VERSION=
CONFIGURE_STYLE=gnu

MAKE_FLAGS+=MEINPROC=
FAKE_FLAGS=DESTDIR=${WRKINST} MEINPROC=
CONFIGURE_ARGS+=-C

DESCR=${PKGDIR}/DESCR
PLIST=${PKGDIR}/PLIST-${FLAVOR}
MODKDE_NODEBUG=Yes

.include <bsd.port.mk>
