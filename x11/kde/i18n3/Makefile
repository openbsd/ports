# $OpenBSD: Makefile,v 1.53 2009/06/29 15:33:28 naddy Exp $

LANGS = af ar az be bg bn br bs ca cs csb cy da de el en_GB eo es et eu fa \
	fi fr fy ga gl he hi hr hu is it ja kk km ko lt lv mk mn ms nb nds \
	nl nn pa pl pt pt_BR ro ru rw se sk sl sr sr@Latn ss sv ta te tg th \
	tr uk uz uz@cyrillic vi wa zh_CN zh_TW

PATCH_LANGS =

# some extra vars to compact PLISTs
I = index.docbook
C = index.cache.bz2

FLAVOR ?= fr
SUBST_VARS = I C
.if ${FLAVOR:L:Msr@latn}
RUN_DEPENDS +=	::x11/kde/i18n3,sr
FULLPKGNAME = kde-i18n-sr@Latn-${VERSION}
.endif

.for l in ${LANGS}
FLAVORS += $l
.  if ${FLAVOR:L:M${l:L}}
DISTFILES = kde-i18n-$l-${VERSION}.tar.bz2
WRKDIST = ${WRKDIR}/kde-i18n-$l-${VERSION}
FULLPKGNAME ?= kde-i18n-$l-${VERSION}
COMMENT = $l translations for KDE
PLIST = ${PKGDIR}/PLIST-$l
DOC = share/doc/HTML/$l/
LOC = share/locale/$l/LC_MESSAGES/
.    if ${PATCH_LANGS:L:M${l:L}}
PATCH_LIST += $l-patch-*
.    endif
.  endif
SUPDISTFILES += kde-i18n-$l-${VERSION}.tar.bz2
SUBST_VARS += DOC LOC
.endfor

DISTNAME =		kde-i18n-${VERSION}
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}
MASTER_SITES =	${MASTER_SITE_KDE:=stable/3.5.10/src/kde-i18n/}

BUILD_DEPENDS = ::x11/kde/libs3
RUN_DEPENDS = ::x11/kde/libs3

PATCH_LIST +=	patch-*
MODKDE_VERSION =
CONFIGURE_STYLE = gnu

MAKE_FLAGS += MEINPROC=
CONFIGURE_ARGS += -C

DESCR = ${PKGDIR}/DESCR
MODKDE_NODEBUG = Yes

.include <bsd.port.mk>
