# $OpenBSD: Makefile,v 1.13 2000/08/25 02:24:10 brad Exp $

DISTNAME=	w3m-0.1.10
CATEGORIES=	www
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.firedrake.org/w3m/ \
		ftp://ei5nazha.yz.yamagata-u.ac.jp/w3m/ \
		http://www.instinct.org/w3m/

HOMEPAGE=	http://ei5nazha.yz.yamagata-u.ac.jp/~aito/w3m/eng/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= -nonstop -prefix="${PREFIX}" -cflags="${CFLAGS} -Wall" \
		-model=monster
CONFIGURE_ENV=	use_nntp=y dmail=mail ded=vi dbrowser=lynx dcc="${CC}" \
		dtermlib="${TERMLIB}" def_helpdir="${PREFIX}/share/w3m" \
		def_libdir="${PREFIX}/libexec/w3m"

FLAVORS=	kanji
FLAVOR?=

.if ${FLAVOR:L:Mkanji}
CATEGORIES+=		japanese
CONFIGURE_ARGS+=	-lang=ja
# XXX w3m resets kterm to jis before displaying a page anyway.
CONFIGURE_ARGS+=	-code=n
.else
CONFIGURE_ARGS+=	-lang=en
.endif

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.cygwin README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${WRKSRC}/doc/w3m.1 ${PREFIX}/man/man1
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
# XXX Tweak PKGNAME
.if ${FLAVOR:L:Mkanji}
PKGNAME:=	ja-${PKGNAME:S/-kanji//}
PKG_ARGS+=	-C 'w3m-*'
.else
PKG_ARGS+=	-C 'ja-w3m-*'
.endif
