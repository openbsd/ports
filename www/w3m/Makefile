# $OpenBSD: Makefile,v 1.32 2001/11/17 02:36:40 naddy Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k

COMMENT=		"text-based web browser/pager"
COMMENT-japanese=	"Japanese text-based web browser/pager"

DISTNAME=	w3m-0.2.2
CATEGORIES=	www
NEED_VERSION=	1.498
HOMEPAGE=	http://w3m.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	w3m

FLAVORS=	japanese
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= -nonstop -prefix="${PREFIX}" -cflags="${CFLAGS}" \
		-model=monster
CONFIGURE_ENV=	use_nntp=y use_ssl_verify=y \
		dmail=mail ded=vi dbrowser=lynx dcc="${CC}" \
		dtermlib="${TERMLIB}" def_helpdir="${PREFIX}/share/w3m" \
		def_libdir="${PREFIX}/libexec/w3m" \
		MIME_TYPES="/var/www/conf/mime.types"
NO_REGRESS=	Yes

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mjapanese}

FULLPKGNAME=	ja-${PKGNAME}
CATEGORIES+=	japanese
CONFIGURE_ARGS+= -lang=ja -code=n
DOCS+=		README.SSL README.cookie README.keymap \
		README.mailcap README.menu
DOCSRC=		${WRKSRC}/doc-jp

.else

CONFIGURE_ARGS+= -lang=en
DOCSRC=		${WRKSRC}/doc

.endif

pre-build:
	@cd ${WRKBUILD}/gc; ${MAKE_PROGRAM} clean

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${DOCSRC}/w3m.1 ${PREFIX}/man/man1
	cd ${DOCSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
