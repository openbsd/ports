# $OpenBSD: Makefile,v 1.40 2002/03/10 07:44:43 brad Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k powerpc

COMMENT=	"pager/text-based web browser"

VERSION=	0.2.5
M17N_VERSION=	20020202

DISTNAME=	w3m-${VERSION}
CATEGORIES=	www
NEED_VERSION=	1.504
HOMEPAGE=	http://w3m.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	w3m
MASTER_SITES0=		http://www2u.biglobe.ne.jp/~hsaka/w3m/patch/
MASTER_SITES1=		http://sites.inka.de/mips/unix/distfiles/

SUPDISTFILES=	w3m-${VERSION}${EXTRACT_SUFX} \
		w3m-${VERSION}-m17n-${M17N_VERSION}${EXTRACT_SUFX}:0 \
		w3m-0.2.5-img-2.2.patch.gz:1

FLAVORS=	image japanese m17n
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

PATCH_LIST=	patch-configure \
		patch-gc_include_private_gcconfig_h \
		patch-gc_dyn_load_c

.if ${FLAVOR:L:Mimage}
.  if !${FLAVOR:L:Mm17n}
PATCHFILES=	w3m-0.2.5-img-2.2.patch.gz:1
PATCH_DIST_STRIP= -p1
.  endif
LIB_DEPENDS=	Imlib.19::graphics/imlib
CONFIGURE_ENV+=	use_image=y
DOCS+=		README.img
.endif

.if ${FLAVOR:L:Mjapanese}
FULLPKGNAME=	ja-${PKGNAME}${FLAVOR_EXT:S/-japanese//}
CATEGORIES+=	japanese
CONFIGURE_ARGS+= --lang=ja --code=n
DOCS+=		README.SSL README.cookie README.keymap \
		README.mailcap README.menu
DOCSRC=		${WRKSRC}/doc-jp
.else
CONFIGURE_ARGS+= --lang=en
DOCSRC=		${WRKSRC}/doc
.endif

.if ${FLAVOR:L:Mm17n}
DISTNAME=	w3m-${VERSION}-m17n-${M17N_VERSION}
PKGNAME=	w3m-${VERSION}.${M17N_VERSION}
CONFIGURE_ARGS+= --suffix="" --charset=UTF-8
DOCS+=		README.m17n
.else
PATCH_LIST+=	patch-file_c
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${DOCSRC}/w3m.1 ${PREFIX}/man/man1
	cd ${DOCSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
