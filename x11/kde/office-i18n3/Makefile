# $OpenBSD: Makefile,v 1.9 2005/03/29 21:18:37 espie Exp $

LANGS=  af ar bg bn bs ca cs cy da de el en_GB eo es et eu fa fi fr gl he hi \
	hr hsb hu is it ja mn ms nb nds nl nn pa pl pt pt_BR ro ru sk sl \
	sr sr@Latn sv ta tg tr uk uz zh_CN zh_TW

# some extra vars to compact PLISTs
I=index.docbook
C=index.cache.bz2

SUBST_VARS=I C
.for l in ${LANGS}
MULTI_PACKAGES += -$l
FULLPKGNAME-$l = koffice-i18n-$l-${VERSION}
COMMENT-$l= "$l translations for koffice"
DOC-$l=share/doc/HTML/$l/
LOC-$l=share/locale/$l/LC_MESSAGES/
SUBST_VARS+=DOC-$l LOC-$l
.endfor

COMMENT="all translations for koffice"

CATEGORIES=		x11 x11/kde
VERSION=		1.3.5
DISTNAME=		koffice-i18n-${VERSION}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
MASTER_SITES= ${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}

BUILD_DEPENDS = ::x11/kde/libs3

MODKDE_VERSION=
MODKDE_NODEBUG=Yes

MAKE_FLAGS+=MEINPROC=
FAKE_FLAGS=DESTDIR=${WRKINST} MEINPROC=
CONFIGURE_ARGS+=-C

.include <bsd.port.mk>
