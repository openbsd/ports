# $OpenBSD: Makefile,v 1.23 2001/08/02 14:59:07 naddy Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k

COMMENT=		"text-based web browser/pager"
COMMENT-kanji=		"Japanese text-based web browser/pager"
COMMENT-image=		"text-based web browser/pager with inline image support"
COMMENT-m17n=		"multi-script text-based web browser/pager"
COMMENT-kanji-m17n=	"Japanese multi-script text-based web browser/pager"
COMMENT-kanji-image=	"Japanese text-based web browser/pager with image support"

V_BASE=		0.2.1
V_IMG=		1.10
V_M17N=		0.19

DISTNAME=	w3m-${V_BASE}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www
NEED_VERSION=	1.427
HOMEPAGE=	http://ei5nazha.yz.yamagata-u.ac.jp/~aito/w3m/eng/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ei5nazha.yz.yamagata-u.ac.jp/w3m/ \
		http://mi.med.tohoku.ac.jp/~satodai/w3m/src/ \
		http://www.instinct.org/w3m/
MASTER_SITES0=	http://www2u.biglobe.ne.jp/~hsaka/w3m/patch/

IMG_PATCH=	w3m-${V_BASE}-img-${V_IMG}.patch:0
M17N_PATCH=	w3m-${V_BASE}-m17n-${V_M17N}.patch.gz:0
PATCH_DIST_STRIP= -p1
SUPDISTFILES=	${DISTFILES} ${IMG_PATCH} ${M17N_PATCH}

FLAVORS=	kanji image m17n
FLAVOR?=

PATCH_LIST=	patch-*

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= -nonstop -prefix="${PREFIX}" -cflags="${CFLAGS}" \
		-model=monster
CONFIGURE_ENV=	use_nntp=y dmail=mail ded=vi dbrowser=lynx dcc="${CC}" \
		dtermlib="${TERMLIB}" def_helpdir="${PREFIX}/share/w3m" \
		def_libdir="${PREFIX}/libexec/w3m"

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mimage} && ${FLAVOR:L:Mm17n}
ERRORS+=	"Fatal: Flavors 'image' and 'm17n' are mutually exclusive."
.endif

.if  ${FLAVOR:L:Mimage}

PKGNAME=	${DISTNAME}.${V_IMG}
PATCHFILES=	${IMG_PATCH}
HOMEPAGE=	http://www2u.biglobe.ne.jp/~hsaka/w3m/
DOCS+=		README.img
PATCH_LIST+=	base-mimehead_c
LIB_DEPENDS+=	Imlib.19::graphics/imlib

.elif ${FLAVOR:L:Mm17n}

PKGNAME=	${DISTNAME}.${V_M17N}
PATCHFILES=	${M17N_PATCH}
HOMEPAGE=	http://www2u.biglobe.ne.jp/~hsaka/w3m/
CONFIGURE_ARGS+= -suffix="" -charset=UTF-8
DOCS+=		README.m17n

.else

PATCH_LIST+=	base-*

.endif

.if ${FLAVOR:L:Mkanji}

.  if   ${FLAVOR:L:Mimage}
FULLPKGNAME=	ja-${PKGNAME}-img
.  elif ${FLAVOR:L:Mm17n}
FULLPKGNAME=	ja-${PKGNAME}-m17n
.  else
FULLPKGNAME=	ja-${PKGNAME}
.  endif
CATEGORIES+=	japanese
CONFIGURE_ARGS+= -lang=ja -code=n
DOCS+=		README.SSL README.cookie README.keymap \
		README.mailcap README.menu
DOCSRC=		${WRKSRC}/doc-jp

.else

CONFIGURE_ARGS+= -lang=en
DOCSRC=		${WRKSRC}/doc

.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${WRKSRC}/doc/w3m.1 ${PREFIX}/man/man1
	cd ${DOCSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
