# $OpenBSD: Makefile,v 1.27 2005/03/29 21:18:36 espie Exp $

LANGS=  af ar bg bn bs ca cs cy da de el en_GB eo es et eu fa fi fr gl he hi \
	hr hsb hu is it ja mn ms nb nds nl nn pa pl pt pt_BR ro ru sk sl \
	sr sr@Latn sv ta tg tr uk uz zh_CN zh_TW

# some extra vars to compact PLISTs
I=index.docbook
C=index.cache.bz2

SUBST_VARS=I C
.for l in ${LANGS}
MULTI_PACKAGES += -$l
FULLPKGNAME-$l = kde-i18n-$l-${VERSION}
COMMENT-$l= "$l translations for KDE"
DOC-$l=share/doc/HTML/$l/
LOC-$l=share/locale/$l/LC_MESSAGES/
SUBST_VARS+=DOC-$l LOC-$l
.endfor

COMMENT="all translations for KDE"

CATEGORIES=		x11 x11/kde
VERSION=		3.4.0
DISTNAME=		kde-i18n-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}

BUILD_DEPENDS = ::x11/kde/libs3
RUN_DEPENDS = ::x11/kde/libs3

PATCH_LIST=	patch-*
MODKDE_VERSION=
CONFIGURE_STYLE=gnu

MAKE_FLAGS+=MEINPROC=
FAKE_FLAGS=DESTDIR=${WRKINST} MEINPROC=
CONFIGURE_ARGS+=-C

DESCR=${PKGDIR}/DESCR

.include <bsd.port.mk>
