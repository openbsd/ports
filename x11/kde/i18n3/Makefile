# $OpenBSD: Makefile,v 1.40 2006/08/04 10:41:01 espie Exp $

LANGS=  af ar az bg bn br bs ca cs cy da de el en_GB eo es et eu fa \
	fi fr fy ga gl he hi hr hu is it ja kk km ko lt lv mk nb nds nl nn \
	pa pl pt pt_BR ro ru rw se sk sl sr sr@Latn ss sv ta tg tr uk uz \
	vi zh_CN zh_TW

# some extra vars to compact PLISTs
I=index.docbook
C=index.cache.bz2

FLAVOR?=fr
SUBST_VARS=I C
.if ${FLAVOR:L:Msr@latn}
RUN_DEPENDS+=	::x11/kde/i18n3,sr
FULLPKGNAME=kde-i18n-${FLAVOR}-${VERSION}
.endif

.for l in ${LANGS}
FLAVORS+=$l
.  if ${FLAVOR:L:M${l:L}}
DISTFILES=kde-i18n-$l-${VERSION}.tar.bz2
WRKDIST=${WRKDIR}/kde-i18n-$l-${VERSION}
FULLPKGNAME?=kde-i18n-$l-${VERSION}
COMMENT= "$l translations for KDE"
PLIST=${PKGDIR}/PLIST-$l
DOC=share/doc/HTML/$l/
LOC=share/locale/$l/LC_MESSAGES/
.  endif
SUPDISTFILES+= kde-i18n-$l-${VERSION}.tar.bz2
SUBST_VARS+=DOC LOC
.endfor

DISTNAME=		kde-i18n-${VERSION}
CATEGORIES=		x11 x11/kde
VERSION=		3.5.4
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES=	${MASTER_SITE_KDE:=stable/3.5.4/src/kde-i18n/}

BUILD_DEPENDS = ::x11/kde/libs3
RUN_DEPENDS = ::x11/kde/libs3

PATCH_LIST=	patch-*
MODKDE_VERSION=
CONFIGURE_STYLE=gnu

MAKE_FLAGS+=MEINPROC=
FAKE_FLAGS=DESTDIR=${WRKINST} MEINPROC=
CONFIGURE_ARGS+=-C

DESCR=${PKGDIR}/DESCR
MODKDE_NODEBUG=Yes

.include <bsd.port.mk>
