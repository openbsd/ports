# $OpenBSD: Makefile,v 1.15 2001/03/24 12:56:14 naddy Exp $

COMMENT=	"text-based web browser/pager"
COMMENT-kanji=	"text-based web browser/pager, japanese flavor"

DISTNAME=	w3m-0.2.1
CATEGORIES=	www
NEED_VERSION=	1.363
HOMEPAGE=	http://ei5nazha.yz.yamagata-u.ac.jp/~aito/w3m/eng/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ei5nazha.yz.yamagata-u.ac.jp/w3m/ \
		http://mi.med.tohoku.ac.jp/~satodai/w3m/src/ \
		http://www.instinct.org/w3m/

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= -nonstop -prefix="${PREFIX}" -cflags="${CFLAGS}" \
		-model=monster
CONFIGURE_ENV=	use_nntp=y dmail=mail ded=vi dbrowser=lynx dcc="${CC}" \
		dtermlib="${TERMLIB}" def_helpdir="${PREFIX}/share/w3m" \
		def_libdir="${PREFIX}/libexec/w3m"

FLAVORS=	kanji
FLAVOR?=

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mkanji}

FULLPKGNAME=	ja-${PKGNAME}
CATEGORIES+=	japanese
CONFIGURE_ARGS+= -lang=ja
# XXX w3m resets kterm to jis before displaying a page anyway.
CONFIGURE_ARGS+= -code=n
DOCS+=	README.SSL README.cookie README.keymap README.mailcap README.menu
DOCDIR=	${WRKSRC}/doc-jp

.else

CONFIGURE_ARGS+= -lang=en
DOCDIR=	${WRKSRC}/doc

.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${WRKSRC}/doc/w3m.1 ${PREFIX}/man/man1
	cd ${DOCDIR} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
