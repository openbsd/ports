# $OpenBSD: Makefile,v 1.16 2001/03/30 17:19:08 naddy Exp $

COMMENT=		"text-based web browser/pager"
COMMENT-kanji=		"text-based web browser/pager, japanese flavor"
COMMENT-m17n=		"multi-script text-based web browser/pager"
COMMENT-kanji-m17n=	"multi-script text-based web browser/pager, japanese flavor"

V_AITO=		0.2.1
V_HSAKA=	0.18

DISTNAME=	w3m-${V_AITO}
CATEGORIES=	www
NEED_VERSION=	1.364
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

M17NPATCH=	w3m-${V_AITO}-m17n-${V_HSAKA}.patch.gz:0
SUPDISTFILES=	${DISTFILES} ${M17NPATCH}

FLAVORS=	kanji m17n
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= -nonstop -prefix="${PREFIX}" -cflags="${CFLAGS}" \
		-model=monster
CONFIGURE_ENV=	use_nntp=y dmail=mail ded=vi dbrowser=lynx dcc="${CC}" \
		dtermlib="${TERMLIB}" def_helpdir="${PREFIX}/share/w3m" \
		def_libdir="${PREFIX}/libexec/w3m"

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mm17n}
PKGNAME=		${DISTNAME}.${V_HSAKA}
PATCHFILES=		${M17NPATCH}
PATCH_DIST_STRIP=	-p1
PATCH_LIST=		patch-* m17n-*
CONFIGURE_ARGS+=	-suffix="" -charset=UTF-8
DOCS+=			README.m17n
.endif

.if ${FLAVOR:L:Mkanji}

. if ${FLAVOR:L:Mm17n}
FULLPKGNAME=		ja-${PKGNAME}-m17n
. else
FULLPKGNAME=		ja-${PKGNAME}
. endif
CATEGORIES+=		japanese
CONFIGURE_ARGS+=	-lang=ja
# XXX w3m resets kterm to jis before displaying a page anyway.
CONFIGURE_ARGS+=	-code=n
DOCS+=			README.SSL README.cookie README.keymap \
			README.mailcap README.menu
DOCSRC=			${WRKSRC}/doc-jp

.else

CONFIGURE_ARGS+=	-lang=en
DOCSRC=			${WRKSRC}/doc

.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${WRKSRC}/doc/w3m.1 ${PREFIX}/man/man1
	cd ${DOCSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
