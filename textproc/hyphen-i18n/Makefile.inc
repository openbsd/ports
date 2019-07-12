# $OpenBSD: Makefile.inc,v 1.2 2019/07/12 20:49:59 sthen Exp $

COMMENT=		${LANG} hyphenation rules
DESCR=			${.CURDIR}/../DESCR
DIC ?=			hyph_$$(basename ${.CURDIR}).dic
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
PKGNAME ?=		${DISTNAME:S/hyph_/hyphen-i18n-/}
SUBST_VARS=		LANG
WRKDIST=		${WRKDIR}

CATEGORIES +=		textproc textproc/hyphen

# LGPLv2.1, LGPLv3, GPLv2, GPLv3, MPL
PERMIT_PACKAGE=	Yes

DIST_SUBDIR=		hyphen
MASTER_SITES=		${MASTER_SITE_FREEBSD_LOCAL:=sunpoet/hyphen/}
EXTRACT_SUFX=		.zip

RUN_DEPENDS +=		textproc/hyphen

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hyphen
	${INSTALL_DATA} ${WRKSRC}/${DIC} ${PREFIX}/share/hyphen/
.if defined(LANG_ALIASES)
.  for a in ${LANG_ALIASES}
	ln -s ${DIC} ${PREFIX}/share/hyphen/hyph_${a}.dic
.  endfor
.endif
