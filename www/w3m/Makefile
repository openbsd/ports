# $OpenBSD: Makefile,v 1.28 2001/10/24 12:23:32 naddy Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k

COMMENT=		"text-based web browser/pager"
COMMENT-kanji=		"Japanese text-based web browser/pager"
COMMENT-image=		"text-based web browser/pager with inline image support"
COMMENT-m17n=		"multi-script text-based web browser/pager"
COMMENT-kanji-m17n=	"Japanese multi-script text-based web browser/pager"
COMMENT-kanji-image=	"Japanese text-based web browser/pager with image support"

V_AITO=		0.2.1	# aito's official release
V_INU=		1.4	# inu branch
V_IMG=		1.11	# image extension
V_M17N=		0.19	# multilingualization extension

AITO_DISTNAME=	w3m-${V_AITO}
INU_DISTNAME=	w3m-${V_AITO}-inu-${V_INU}

CATEGORIES=	www
NEED_VERSION=	1.474
HOMEPAGE=	http://ei5nazha.yz.yamagata-u.ac.jp/~aito/w3m/eng/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ei5nazha.yz.yamagata-u.ac.jp/w3m/ \
		http://mi.med.tohoku.ac.jp/~satodai/w3m/src/ \
		http://www.instinct.org/w3m/ \
		ftp://ftp.wiretapped.net/pub/w3m/
MASTER_SITES0=	http://mi.med.tohoku.ac.jp/~satodai/w3m/inusrc/200109/
MASTER_SITES1=	http://www2u.biglobe.ne.jp/~hsaka/w3m/patch/

INU_DISTFILE=	${INU_DISTNAME}${EXTRACT_SUFX}:0
IMG_PATCH=	w3m-${V_AITO}-inu-${V_INU}-img-${V_IMG}.patch:1
M17N_PATCH=	w3m-${V_AITO}-m17n-${V_M17N}.patch.gz:1
PATCH_DIST_STRIP= -p1
SUPDISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${INU_DISTFILE} \
		${IMG_PATCH} ${M17N_PATCH}

FLAVORS=	kanji image m17n
FLAVOR?=

PATCH_LIST=	patch-*

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= -nonstop -prefix="${PREFIX}" -cflags="${CFLAGS}" \
		-model=monster
CONFIGURE_ENV=	use_nntp=y use_ssl_verify=y \
		dmail=mail ded=vi dbrowser=lynx dcc="${CC}" \
		dtermlib="${TERMLIB}" def_helpdir="${PREFIX}/share/w3m" \
		def_libdir="${PREFIX}/libexec/w3m"

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mimage} && ${FLAVOR:L:Mm17n}
ERRORS+=	"Fatal: Flavors 'image' and 'm17n' are mutually exclusive."
.endif

.if  ${FLAVOR:L:Mimage}

DISTNAME=	${INU_DISTNAME}
PKGNAME=	w3m-${V_AITO}.inu.${V_INU}.${V_IMG}
DISTFILES=	${INU_DISTFILE}
PATCHFILES=	${IMG_PATCH}
HOMEPAGE=	http://www2u.biglobe.ne.jp/~hsaka/w3m/
DOCS+=		README.img
LIB_DEPENDS+=	Imlib.19::graphics/imlib

.elif ${FLAVOR:L:Mm17n}

DISTNAME=	${AITO_DISTNAME}
PKGNAME=	${DISTNAME}.${V_M17N}p1
PATCHFILES=	${M17N_PATCH}
HOMEPAGE=	http://www2u.biglobe.ne.jp/~hsaka/w3m/
CONFIGURE_ARGS+= -suffix="" -charset=UTF-8
DOCS+=		README.m17n
PATCH_LIST+=	m17n-*

.else

DISTNAME=	${INU_DISTNAME}
PKGNAME=	w3m-${V_AITO}.inu.${V_INU}
DISTFILES=	${INU_DISTFILE}

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
