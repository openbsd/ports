# $OpenBSD: Makefile,v 1.1.1.1 2001/11/17 02:46:02 naddy Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k

COMMENT=		"multi-script text-based web browser/pager"
COMMENT-japanese=	"Japanese multi-script text-based web browser/pager"

DISTNAME=	w3m-m17n-0.19
CATEGORIES=	www
NEED_VERSION=	1.498
HOMEPAGE=	http://www2u.biglobe.ne.jp/~hsaka/w3m/index.html#m17n

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www2u.biglobe.ne.jp/~hsaka/w3m/patch/

FLAVORS=	japanese
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= -nonstop -prefix="${PREFIX}" -cflags="${CFLAGS}" \
		-model=monster -charset=UTF-8
CONFIGURE_ENV=	use_nntp=y use_ssl_verify=y \
		dmail=mail ded=vi dbrowser=lynx dcc="${CC}" \
		dtermlib="${TERMLIB}" def_helpdir="${PREFIX}/share/w3m-m17n" \
		def_libdir="${PREFIX}/libexec/w3m-m17n" \
		MIME_TYPES="/var/www/conf/mime.types"
NO_REGRESS=	Yes

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.dict README.func README.m17n STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mjapanese}

FULLPKGNAME=		ja-${PKGNAME}
CATEGORIES+=		japanese
CONFIGURE_ARGS+=	-lang=ja
CONFIGURE_ARGS+=	-code=n
DOCS+=			README.SSL README.cookie README.keymap \
			README.mailcap README.menu
DOCSRC=			${WRKSRC}/doc-jp

.else

CONFIGURE_ARGS+=	-lang=en
DOCSRC=			${WRKSRC}/doc

.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m-m17n
	${INSTALL_MAN} ${DOCSRC}/w3m.1 ${PREFIX}/man/man1/w3m-m17n.1
	cd ${DOCSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m-m17n

.include <bsd.port.mk>
