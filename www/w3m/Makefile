# $OpenBSD: Makefile,v 1.38 2002/02/02 03:19:01 naddy Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k

COMMENT=		"text-based web browser/pager"
COMMENT-image=		"text-based web browser/pager with inline image support"
COMMENT-japanese=	"Japanese text-based web browser/pager"
COMMENT-japanese-image=	"Japanese text-based web browser/pager with image support"

VERSION=	0.2.5

DISTNAME=	w3m-${VERSION}
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
MASTER_SITES0=		http://sites.inka.de/mips/unix/distfiles/
SUPDISTFILES=		${DISTFILES} ${IMG_PATCH}
IMG_PATCH=		w3m-${VERSION}-img-2.2.patch.gz:0
PATCH_DIST_STRIP=	-p1

FLAVORS=	image japanese
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--nonstop \
		--prefix="${PREFIX}" \
		--sysconfdir="${SYSCONFDIR}/w3m" \
		--model=monster \
		--mimetypes=/var/www/mime.types
CONFIGURE_ENV=	use_ssl_verify=y \
		dmail=mail ded=vi dbrowser=lynx

NO_REGRESS=	Yes

DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mimage}
PATCHFILES=	${IMG_PATCH}
LIB_DEPENDS=	Imlib.19::graphics/imlib
CONFIGURE_ENV+=	use_image=y
DOCS+=		README.img
.endif

.if ${FLAVOR:L:Mjapanese}

.  if ${FLAVOR:L:Mimage}
FULLPKGNAME=	ja-${PKGNAME}-image
.  else
FULLPKGNAME=	ja-${PKGNAME}
.  endif
CATEGORIES+=	japanese
CONFIGURE_ARGS+= --lang=ja --code=n
DOCS+=		README.SSL README.cookie README.keymap \
		README.mailcap README.menu
DOCSRC=		${WRKSRC}/doc-jp

.else

CONFIGURE_ARGS+= --lang=en
DOCSRC=		${WRKSRC}/doc

.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${DOCSRC}/w3m.1 ${PREFIX}/man/man1
	cd ${DOCSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
