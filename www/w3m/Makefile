# $OpenBSD: Makefile,v 1.54 2003/03/29 00:32:46 naddy Exp $

COMMENT=	"pager/text-based web browser"

VERSION=	0.4.1
M17N_VERSION=	20030308
REVISION=

DISTNAME=	w3m-${VERSION}
PKGNAME=	${DISTNAME}${REVISION}
CATEGORIES=	www
HOMEPAGE=	http://w3m.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w3m/}
MASTER_SITES0=	http://www2u.biglobe.ne.jp/~hsaka/w3m/patch/

SUPDISTFILES=	w3m-${VERSION}${EXTRACT_SUFX} \
		w3m-${VERSION}-stable-m17n-${M17N_VERSION}${EXTRACT_SUFX}:0

LIB_DEPENDS=	gc.1::devel/boehm-gc

FLAVORS=	image japanese m17n
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--nonstop \
		--prefix="${PREFIX}" \
		--gc-includedir="${LOCALBASE}/include" \
		--gc-libdir="${LOCALBASE}/lib" \
		--sysconfdir="${SYSCONFDIR}/w3m" \
		--model=monster \
		--mimetypes=/var/www/conf/mime.types
CONFIGURE_ENV=	use_ssl_verify=y \
		dmail=mail ded=vi dbrowser=lynx \
		use_bundled_gclib=n

NO_REGRESS=	Yes

DOCS=	FAQ.html HISTORY MANUAL.html README README.dict README.func \
	README.mouse README.pre_form README.tab STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mimage}
LIB_DEPENDS+=	gdk_pixbuf.2,gdk_pixbuf_xlib.2::graphics/gdk-pixbuf
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
DISTNAME=	w3m-${VERSION}-stable-m17n-${M17N_VERSION}
PKGNAME=	w3m-${VERSION}.${M17N_VERSION}${REVISION}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}:0
CONFIGURE_ARGS+= --suffix="" --charset=UTF-8
DOCS+=		README.m17n
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	cd ${DOCSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
