# $OpenBSD: Makefile,v 1.33 2005/10/17 14:11:01 espie Exp $

LANGS=  af ar bg bn br bs ca cs cy da de el en_GB eo es et eu fi fr fy ga he hi \
	hsb hu is it ja lt mk nb nds nl nn pa pl pt pt_BR ro ru se sk sl \
	sr sr@Latn sv ta tg tr uk zh_CN

# some extra vars to compact PLISTs
I=index.docbook
C=index.cache.bz2

FLAVOR?=fr
SUBST_VARS=I C
.for l in ${LANGS}
FLAVORS+=$l
.  if ${FLAVOR:M$l}
DISTFILES=kde-i18n-$l-${VERSION}.tar.bz2
WRKDIST=${WRKDIR}/kde-i18n-$l-${VERSION}
FULLPKGNAME=kde-i18n-$l-${VERSION}
COMMENT= "$l translations for KDE"
DOC=share/doc/HTML/$l/
LOC=share/locale/$l/LC_MESSAGES/
.  endif
SUPDISTFILES+= kde-i18n-$l-${VERSION}.tar.bz2
SUBST_VARS+=DOC LOC
.endfor

DISTNAME=		kde-i18n-${VERSION}
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES=	${MASTER_SITE_KDE:=stable/3.4.3/src/kde-i18n/}

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
